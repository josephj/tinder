Tinder
---------

A convenient tool which helps me to create prototype rapidly.

![](http://d.pr/i/sqFY+)

It's useful when ...

* Your development machine is `Mac`. (Not tested in other environments)
* Your favorite editor is `vim`. (Spliting windows)
* You feel comfortable with `tmux`. (Creating session and launching web server)  
* You love to use preprocessor `Compass` and `CoffeeScript`. (w/ LiveReload of course!)

Of course you can fork and change to use anything you love.

## Why?

As a Front End Developer, I need to make prototypes frequently. You can achieve it by several tools such as [codepen](http://codepen.io) or [jsfiddle](http://jsfiddle.com). My personal favor is to develope in CLI. That's the reason I create this CLI tool for myself.

Of course you can achieve similar goal by Yeoman. However, I prefer making it from scratch. :)

## Install

Use the install script which simplifies steps.

```
wget -O - https://raw.githubusercontent.com/josephj/tinder/master/install.sh | sh
```

It actually runs `npm install . -g` and move file commands. After executing it, you will get a new global `tinder` command.

## Usage

### Step 1. Create a Project

```
tinder new <folder>
```

It creates a project folder which has everything you need to create a standalone prototype.

### Step 2. Set Environment

NOTE: Change directory to the project folder before executing the following command.

```
tinder server
```

It launches standard alone web server in a tmux session which has the identical name with your folder.

### Step 3. Update to Gist (Not Ready)

```
tinder gist
```

