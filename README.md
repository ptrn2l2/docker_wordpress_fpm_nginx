# Wordpress DOCKER Starter

Example of using wordpress official Docker image.

This is just an example template: to use remove wordpress folder files 
from .gitignore (see ./wordpress/README.txt)!

In all of the containers the local folder is shared in '/loc'
so it can be used for backup purposes.

*Important*: on the first run build an the start only the databse container

    docker-compose build
    docker-compose up wpd_db

When you red "ready for connections" or similiar, press &lt;CTRL&gt;-&lt;C&gt;.
Then, and only then, run

    docker-compose up

wordpress should copy all php files in './wordpress'.
If for some reason the local folder remains empty it means
you have problems in sharing files with docker. This typically
happends in Windows.
In this case try to reset credentials in "Docker settings" dialog
and, as suggested in the dialog, run:

    docker run --rm -v c:/Users:/data alpine ls /data

You should see your c:\Users folder in /data. If this is
not the case, try to fix the prblem.

## Env vars
 NOTES:
 
   - MariaDB/MySQL's env variables must be set in a file called

         .secret_env_wpd_db.env

     (copy ".secret_env_wpd_db.EXAMPLE.env" to ".secret_env_wpd_db.env" and set passwords)

  - Similarly wordpress uses

         .secret_env_wpd_wp.env

     (copy ".secret_env_wpd_wp.EXAMPLE.env" to ".secret_env_wpd_wp.env" and set passwords)


## Notes

NOTES:
- On Linux you can add

       user: $UID

   to all services

## TODO

- Add https with self signed certs:
    ° already done in other projects, must choose between only adding instructions or actual example certs
- Write better nginx config, the one here is just for having things up & running fast
- Enable php debug

