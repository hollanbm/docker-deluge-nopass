FROM linuxserver/deluge

RUN sed -i 's/this.passwordField.focus(!0,300)/this.onLogin()/g' /usr/lib/python3/dist-packages/deluge/ui/web/js/deluge-all.js