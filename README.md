Tinder
---------

A convenient tool which helps me to create prototype rapidly.

![](http://d.pr/i/sqFY+)

## Installation

By executing the following line, it will automatically create a folder with random name. 

```
wget -O - https://raw.githubusercontent.com/josephj/tinder/master/install.sh | sh
```

1. Go into the folder.
2. Start webserver by executing `gulp server`.
3. Do some modification in another window or tab. `vim app/demo.html`

All the `*.coffee`, `*.sass`, and `*.html` files are watched by `gulp server`. With `LiveReload` installed, your pages will be refreshed automatically while you have any modifications to these 3 file types. 
