# startled

Startled is a starting point for creating projects using modern tools and best practices.

It makes heavy use of npm as a script runner and package.json for storing project data.

The project's capabilities can be extended by running scripts (see below).

## pre-requesties

These commands are designed to work on linux and unix machines, including machines running macOS.

If you're running Windows 10 Professional, you can run them using the [Windows Subsystem for Linux](https://msdn.microsoft.com/en-us/commandline/wsl/install_guide?f=255&MSPPError=-2147217396) or within a [Docker container](https://docker.com).

Ensure that these utilities are installed first:

- [node / npm](https://nodejs.org)
- [git](https://git-scm.com/)
- [curl](https://curl.haxx.se)
(curl is only necessary for extension scripts)

## installation

### new project

- 1. clone this repository

  ```bash
  git clone git@github.com:johnhenry/startled.git
  ```

- reinitialize

  ```bash
  git init
  ```

- install

  ```bash
  npm install
  ```

- initialize locally

  ```bash
  npm run local-init
  ```

- start coding

### existing project

- run the following script

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/_.sh)"
```

- continue coding

## using npm
 - update project version with "npm version <'patch'|'minor'|'major'>"
 - install modules with "npm install < package name >@< version tag? >"

## internals

### included npm scripts

#### get: read a value from package.json

```bash
npm run get < path in package.json >
```

#### set: add a key to package.json

```bash
npm run set < path in package.json > 'value to set'
```

#### delete: remove a key from package.json

```bash
npm run delete < path in package.json >
```

#### local-init: initialize project

```bash
npm run local-init
```

This is a special script that should be run once after a project is cloned from a git repository or after 'git init' is run.
It does a few things...

 - creates git script to add tag after running  npm version <'patch'|'minor'|'major'>


### included files

#### .npmrc
	set up with 'save=true' to save installed dependencies automatically

#### .gitignore
	set up to ignore 'node_modules/' folder

#### .startled/local-init.sh

## installation scripts
Update capabilities by running scripts in the project directory.

### yarn.sh
- Use yarn to manage packages
- creates scripts "npm run install" and "npm run install"

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/yarn.sh)"
```

## unfinished installation scripts

These scripts will be ready soon.

## css-next-slug.sh
- Compile latest version of css into a self-contained slug
- creates script "npm run build-css"
- creates script/index.js

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/css-next-slug.sh)"
```

## js-next-slug.sh
- Compile latest version of javascript into a self-contained slug
- creates script "npm run build-js"

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/js-next-slug.sh)"
```

## js-next-browser-slug.sh
- Compile latest version of javascript into a self-contained slug for use in the browser
- creates script "npm run build-js-browser"

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/js-next-browser-slug.sh)"
```

## html.sh
- Compile react components into static html files.
- creates script "npm run build-html"

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/html.sh)"
```

## node-next-slug.sh
- Run a node script written in the latest version of javascript
- creates script "npm run node"

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/node-next.sh)"
```

## static-server.sh
- Run static server
- creates script "npm run static"

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/static-server.sh)"
```
