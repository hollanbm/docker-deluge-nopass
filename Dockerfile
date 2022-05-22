FROM lscr.io/linuxserver/deluge

RUN sed -i "s/passwordField.getValue()/'deluge'/g" /usr/lib/python3.10/site-packages/deluge/ui/web/js/deluge-all-debug.js
RUN sed -i "s/this.passwordField.focus(true, 300);/this.hide();\n\t\tthis.onLogin();/g" /usr/lib/python3.10/site-packages/deluge/ui/web/js/deluge-all-debug.js
RUN sed -i "s/deluge.events.fire('login');/deluge.client.web.set_config({ first_login: false });\n\t\t\t\t\tdeluge.events.fire('login');/g" /usr/lib/python3.10/site-packages/deluge/ui/web/js/deluge-all-debug.js
