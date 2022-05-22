FROM lscr.io/linuxserver/deluge

# set login method, to use default password 'deluge'
RUN sed -i "s/passwordField.getValue()/'deluge'/g" /usr/lib/python3.10/site-packages/deluge/ui/web/js/deluge-all-debug.js

# hide login prompt, and trigger login method
RUN sed -i "s/this.passwordField.focus(true, 300);/this.hide();\n\t\tthis.onLogin();/g" /usr/lib/python3.10/site-packages/deluge/ui/web/js/deluge-all-debug.js

# eliminate initial password change prompt on first run
RUN sed -i "s/deluge.events.fire('login');/deluge.client.web.set_config({ first_login: false });\n\t\t\t\t\tdeluge.events.fire('login');/g" /usr/lib/python3.10/site-packages/deluge/ui/web/js/deluge-all-debug.js
