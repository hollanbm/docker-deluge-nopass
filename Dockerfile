FROM linuxserver/deluge:5b398f77-ls22

RUN sed -i 's/this.passwordField.focus(true,300)/this.onLogin()/g' /usr/lib/python2.7/dist-packages/deluge/ui/web/js/deluge-all.js 
