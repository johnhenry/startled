# startled
Startled is a starting point for creating projects using modern tools and best practices.
It makes heavy use of npm as a script runner and package.json for storing project data.
The project's capabilities can be extended by running scripts (see below).


## pre-requesties

- [node/npm](https://nodejs.org)
- [git](https://git-scm.com/)
- [curl](https://curl.haxx.se)

## installation

### new project

- clone this repository

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

run the following script

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/_.sh)"
```

- continue coding

## internals

### included files

#### .npmrc
	set up with 'save=true' to save installed dependencies automatically

#### .gitignore
	set up to ignore 'node_modules/' folder

#### .startled/local-init.sh

### included npm scripts

#### get: read a key from package.json
#### set: add a key to package.json
#### delete: remove a key from package.json
#### local-init: initialize project
This is a special script that should be run once after a project is cloned from a git repository
or after 'git init' is run.
It does a few things...

 - creates git script to add tag after running npm version <'patch'|'minor'|'major'>

##using npm
 - update project version with "npm version <'patch'|'minor'|'major'>"
 - install package with "npm run yarn add <package name>"

##installation scripts
Update capabilities by running scripts in the project directory.

- Use yarn to manage packages
- creates scripts "npm run install" and "npm run install"

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/yarn.sh)"
```

- Compile latest version of css into a self-contained slug
- creates script "npm run build-css"

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/css-next-slug.sh)"
```

- Compile latest version of javascript into a self-contained slug
- creates script "npm run build-js"

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/js-next-slug.sh)"
```

- Compile latest version of javascript into a self-contained slug for use in the browser
- creates script "npm run build-js-browser"

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/js-next-browser-slug.sh)"
```

- Run a node script written in the latest version of javascript
- creates script "npm run node"

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/node-next.sh)"
```

- Compile react components into static html files.
- creates script "npm run build-html"

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/johnhenry/startled/master/.startled/scripts/js-next-browser-slug.sh)"
```
