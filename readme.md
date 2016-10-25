# Startled

Startled is a starting point for creating projects using modern tools and best practices. It's a minimal project and a set of customization scripts.

It makes heavy use of npm as a script runner and package.json for storing project data.

The project's capabilities can be extended by running scripts (see below).

## Pre-requesties

These commands are designed to work on linux and unix machines, including machines running macOS.

If you're running Windows 10 Professional, you can run them using the [Windows subsystem for Linux](https://msdn.microsoft.com/en-us/commandline/wsl/install_guide?f=255&MSPPError=-2147217396) or within a [Docker container](https://docker.com).

If you're running some other version of Windows, the npm scripts _should_ work, but extension scripts will fail. You might want to try [cygwin](https://www.cygwin.com/) in this case, or try downloading and running the script source manually.

Ensure that these utilities are installed first:

- [node / npm](https://nodejs.org)
- [git](https://git-scm.com/)
- [curl](https://curl.haxx.se)
(curl is only necessary for extension scripts)

## Installation

### New project

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

### Existing project

If you already have a a project, run the following script:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/_.sh)"
```

- continue coding

## Using npm
 - update project version with "npm version <'patch'|'minor'|'major'>"
 - install modules with "npm install < package name >@< version tag? >"

## Internals

### Included npm scripts

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

## Installation scripts
Update project capabilities by running scripts in the project directory.

### yarn.sh
- Use [yarn](https://yarnpkg.com/) to manage packages
- Creates scripts:
  - npm run install < package name >
  - npm run uninstall < package name >

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/yarn.sh)"
```

## unfinished installation scripts

These scripts will be ready soon.

### css-next-slug.sh
- Compile latest version of css into a self-contained slug
- Creates script:
  - npm run build-css
- Creates files:
  - style/index.css
- Compiles to files:
  - dist/index.css

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/css-next-slug.sh)"
```

### js-next-slug.sh
- Compile latest version of javascript into a self-contained slug
- Creates script:
  - npm run build-js
- Creates files:
  - script/index.js
- Compiles to files:
  - dist/index.js

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/js-next-slug.sh)"
```

### js-next-browser-slug.sh
- Compile latest version of javascript into a self-contained slug for use in the browser
- Creates script:
  - npm run build-js-browser
- Creates files:
  - script/index.js
- Compiles to files:
  - dist/index.js

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/js-next-browser-slug.sh)"
```


### lint-js.sh
- Lint JavaScript
- Creates scripts:
  - npm run lint-js < package name >

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/lint-js.sh)"
```

### lint-css.sh
- Lint CSS
- Creates scripts:
  - npm run lint-css < package name >

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/lint-css.sh)"
```

### html.sh
- Compile react components into static html files.
- Creates script:
  - npm run build-html
- Creates files:
  - html/.md.jsx.html.js
  - html/index.jsx
- Compiles to files:
  - dist/index.js

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/html.sh)"
```

### node-next-slug.sh
- Run a node script written in the latest version of javascript
- Creates script:
  - npm run node
- Creates files:
  - node/index.js

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/node.sh)"
```

### serve-static.sh
- Run static server
- Creates script:
  - npm run serve-static
- Requires files:
  - dist/

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/serve-static.sh)"
```

### move.sh
- Move static files into dist directory
- Creates script:
  - npm run move
- Requires files:
  - static/*
  - dist/

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/move.sh)"
```

### deploy-surge.sh
- Push static site to https://surge.sh
- Creates script:
  - npm run deploy-surge
- Requires files:
  - dist/*

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/deploy-surge.sh)"
```
