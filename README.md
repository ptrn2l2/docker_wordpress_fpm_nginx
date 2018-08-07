# Wordpress DOCKER Starter

Example of using wordpress official Docker image.
On the first run start only the databse container

    docker-compose up wpd_db

When you red "ready for connections" or similiar, press &lt;CTRL&gt;-&lt;C&gt;.

This is just an example template: to use remove wordpress folder files from .gitignore
(see ./wordpress/README.txt)!

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

Add https with self signed certs:
    - already done in other projects, must choose between only adding instructions or actual example certs
Add 
