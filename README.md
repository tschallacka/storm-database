## Storm Database Library

This is a individual fork of the [Storm Library](https://github.com/wintercms/storm) for WinterCMS that adds solely the database features and removes the rest of the features that that library offers.

You are now looking at the laravel-6 symfony 3 compatability module branch( < v 1.0 )

This way you can have a lean library for snazzy database models in independent projects, without needing all the other wintercms dependent features that the storm library offers.

For documentation refer to [https://wintercms.com/docs/database/model]

To test this library run composer test.

If you wish to contribute consider contributing to the winter storm library.

Currently this uses a branch for migrating to laravel 8 in a newer version, but this will follow the main branch when laravel 8 integration is achieved.

## Contributing

Run the command composer update-from-source to update the files from the source.  
Currently it pulls from my private branch on https://github.com/tschallacka/storm/tree/remove_helper_calls  

Feel free to modify bin/sync.sh to suit your needs.

