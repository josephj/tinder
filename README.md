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

All the `*.coffee`, `*.sass`, and `*.html` files are watched by `gulp server`. Taking the advantage of `LiveReload`, your pages will be refreshed automatically while you have any modifications to these 3 file types.

## Todo

Install tinder CLI tools globally.

```
git clone git@github.com:josephj/tinder.git
cd tinder
npm install -g .
```

And then you can execute `tinder` to create different types of projects.

* `tinder new <folder> -t angular`
* `tinder new <folder> -t form`
* `tinder new <folder> -t demo`

Also, you can push your code to gist or codepen if you want.

* Gist

```
cd <folder>; tinder gist
```
* codepen.io

```
cd <folder>; tinder codepen
```

