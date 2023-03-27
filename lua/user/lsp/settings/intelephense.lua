-- https://github.com/Mte90/dotfiles/blob/master/.config/nvim/lua/plugin/lsp.lua
-- https://daniele.tech/2021/07/neovim-lsp-with-intelephense-for-php-and-wordpress-and-others/
-- https://stackoverflow.com/questions/30664220/where-to-find-composers-global-packages
return {
    settings = {
        intelephense = {
            stubs = {
                "bcmath", "bz2", "Core", "curl", "date", "dom", "fileinfo", "filter", "gd", "gettext", "hash", "iconv", "imap", "intl", "json", "libxml", "mbstring", "mcrypt", "mysql",
                "mysqli", "password", "pcntl", "pcre", "PDO", "pdo_mysql", "Phar", "readline", "regex", "session", "SimpleXML", "sockets", "sodium", "standard", "superglobals",
                "tokenizer", "xml", "xdebug", "xmlreader", "xmlwriter", "yaml", "zip", "zlib", "wordpress-stubs", "woocommerce-stubs", "acf-pro-stubs", "wordpress-globals", "wp-cli-stubs",
                "genesis-stubs", "polylang-stubs"
            },
            environment = {
              includePaths = {'/home/serg/.config/composer/vendor/php-stubs/', '/home/serg/.config/composer/vendor/wpsyntex/'}
            },
            files = {
                maxSize = 5000000;
            };
        };
    },
}
