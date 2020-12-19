# README

Instructions:

1. `$ docker build -t foo .`
2. `$ docker run -it --entrypoint /bin/bash foo`
3. `$ nvim main.go`
4. Open file, see error on line with with sign column and entry in loclist
5. Type something and exit insert mode then save
6. Error is gone from loclist but still shown in cmdline when cursor is in line 1
