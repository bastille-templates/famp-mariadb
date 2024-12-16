## Now apply template to container
```sh
bastille create famp-mariadb 14.1-RELEASE YourIP-Bastille
bastille bootstrap https://github.com/bastille-templates/famp-mariadb
bastille template famp-mariadb bastille-templates/famp-mariadb
```
## License
This project is licensed under the BSD-3-Clause license.