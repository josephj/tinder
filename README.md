Tinder
---------

A convenient tool which helps me to create prototype rapidly.

![](http://d.pr/i/sqFY+)

## Install

You can install `tinder` by following steps.

```
git clone git@github.com:josephj/tinder.git
cd tinder
npm install . -g
```

Or use the install script which simplifies steps.

```
wget -O - https://raw.githubusercontent.com/josephj/tinder/master/install.sh | sh
```

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

