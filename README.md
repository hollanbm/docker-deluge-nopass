# docker-deluge-nopass

05/22/22 - Updated to support the latest version of deluge.

This container is built using lscr.io/linuxserver/deluge, and applies some patches to the deluge-ui JS file.
* Hide login prompt
* trigger login method, with default password 'deluge'
* disable first time password change popup
