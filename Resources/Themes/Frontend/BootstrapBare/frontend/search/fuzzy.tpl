{extends file='frontend/index/index.tpl'}

{block name="gridconfig" prepend}
    {if $theme.sidebarFilter}
        {assign "grid" "g110" scope="global"}
    {else}
        {assign "grid" "g010" scope="global"}
    {/if}
{/block}

{* Sidebar left *}
{block name='frontend_index_content_left'}
    {block name="frontend_search_sidebar"}
        {if $theme.sidebarFilter && $sSearchResults.sArticles}
            {include file='frontend/listing/sidebar.tpl'}
        {/if}
    {/block}
{/block}

{block name='frontend_index_left_categories_content'}{/block}
{block name="frontend_index_left_menu_container"}{/block}

{* Breadcrumb *}
{block name='frontend_index_start' prepend}
    {if $sRequests.sSearchOrginal}
        {$sBreadcrumb = [['name' => "{s name="SearchResultsFor"}{/s}"]]}
    {else}
        {$sBreadcrumb = [['name' => "{s name="SearchResultsEmpty"}{/s}"]]}
    {/if}
{/block}

{* Main content *}
{block name='frontend_index_content'}
    {block name='frontend_search_info_messages'}
        {if !$sSearchResults.sArticles}
            {if $sRequests.sSearchOrginal}

                {* No results found *}
                {block name='frontend_search_message_no_results'}
                    <div class="alert-search-results sw5-plugin">
                        {include file="frontend/_includes/messages.tpl" type="warning" content="{s name='SearchFuzzyHeadlineNoResult'}{/s}"}
                    </div>
                {/block}
            {else}

                {* Given search term is too short *}
                {block name='frontend_search_message_shortterm'}
                    <div class="alert-search-results sw5-plugin">
                        {include file="frontend/_includes/messages.tpl" type="error" content="{s name='SearchFuzzyInfoShortTerm'}{/s}"}
                    </div>
                {/block}
            {/if}
        {/if}
    {/block}

    {if $sSearchResults.sArticles}
        {* Listing variables *}
        {block name="frontend_search_variables"}
            {$sArticles = $sSearchResults.sArticles}
            {$sNumberArticles = $sSearchResults.sArticlesCount}
            {$sBoxMode = "table"}
            {$showListing = true}
            {$pages = ceil($sNumberArticles / $criteria->getLimit())}
            {$countCtrlUrl = "{url module="widgets" controller="listing" action="listingCount" params=$ajaxCountUrlParams fullPath}"}
        {/block}

        {block name='frontend_search_headline'}
            <h1 class="search-headline mbl text-center">
                {s name='SearchHeadline'}{/s}
            </h1>
        {/block}

        {block name="frontend_search_results"}
            <div class="search-results">
                {include file='frontend/listing/listing.tpl'}
            </div>
        {/block}
    {/if}
{/block}
