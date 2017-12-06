# Shopware Bootstrap Theme

- **License**: GPL-3.0
- **Github**: <https://github.com/conexco/shopware-bootstrap-theme>
- **Shopware Community Store**: <http://store.shopware.com/swf4843184974406/shopware-bootstrap-theme.html>

### Requirements
- Shopware 5.3 or newer


### Overview

The repository contains different branches

- **1.0** contains the stable code. If you want to use the theme in production, you should use this branch.
- **dev** the dev branch contains new features and bugfixes

Every release is tagged with its version like `v1.0.0`. If you need an older version for you shop, just checkout the tag you need.

### Installation via Shopware Store
Open the plugin manager in your shop and search for `Shopware Bootstrap Theme`.
Then install and activate it.
After that open the theme manager and activate the theme for the shops where you want to use it

### Installation via Git
1.) go to your shop root directory and clone the theme into the plugin directory
```
git clone git@github.com:conexco/shopware-bootstrap-theme.git custom/plugins/SwfBootstrapTheme
```

2.) install the plugin in the plugin manager or execute the following commands on the command line
```
php bin/console sw:plugin:refresh
php bin/console sw:plugin:install --activate SwfBootstrapTheme
```

3.) to use the bootstrap theme you have to activate it in the plugin manager in the shopware backend

### Installation via Composer
1.) add to composer dependencies
```
{
    "require": {
        ...
        "conexco/shopware-bootstrap-theme": "~1"
    },
    "repositories": [
        {
            "type": "vcs",
            "url": "https://github.com/conexco/shopware-bootstrap-theme.git"
        }
    ]
}
```

2.) update your composer dependencies
```
composer update
```

3.) install the plugin in the plugin manager or execute the following commands on the command line
```
php bin/console sw:plugin:refresh
php bin/console sw:plugin:install --activate SwfBootstrapTheme
```

4.) to use the bootstrap theme you have to activate it in the plugin manager in the shopware backend

## Get involved
The Shopware Bootstrap Theme is available under the GPL-3.0 license.

If you want to contribute a feature or bugfix, feel free to create a pull request. You can find more on that topic in our [CONTRIBUTING.md](CONTRIBUTING.md).
