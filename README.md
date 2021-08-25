## Storm Database Library

This is a individual fork of the [Storm Library](https://github.com/wintercms/storm) for WinterCMS that adds solely the database features and removes the rest of the features that that library offers.

This way you can have a lean library for snazzy database models in independent projects, without needing all the other wintercms dependent features that the storm library offers.

For documentation refer to [https://wintercms.com/docs/database/model]

To test this library run composer test.

If you wish to contribute consider contributing to the winter storm library.

Currently this uses a branch for migrating to laravel 8 in a newer version, but this will follow the main branch when laravel 8 integration is achieved.

## Installation

```bash
composer require tschallacka/storm-database
```

## Usage

Somewhere in your application boot up or at the location where you wish to use it, you'll most likely need to initialize the Eloquent connection manager.
You can use something like the snippet below.

```php
$db_conf = require('path/to/config/database.php');
$manager = new \Winter\Storm\Database\Capsule\Manager();
foreach($db_conf as $name => $config)
{
    $manager->addConnection($config, $name);
}
$manager->bootEloquent();
```

Use the [WinterCMS documentation](https://wintercms.com/docs/database/basics#configuration) to see which configuration details are accepted, or review the [Laravel documentation](https://laravel.com/docs/4.2/database#configuration)

## Contributing

Run the command composer update-from-source to update the files from the source.  
Currently it pulls from my private branch on https://github.com/tschallacka/storm/tree/remove_helper_calls  

Feel free to modify bin/sync.sh to suit your needs.

