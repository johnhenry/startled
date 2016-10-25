#install npm modules
npm install --save-dev \
browserify \
babelify \
babel-cli \
babel-polyfill \
babel-preset-babili \
babel-plugin-transform-react-jsx \
babel-plugin-transform-es2015-destructuring \
babel-plugin-transform-async-to-generator \
babel-plugin-transform-async-generator-functions \
babel-plugin-minify-mangle-names \
babel-plugin-minify-constant-folding \
babel-preset-stage-3 \
babel-preset-es2017 \
babel-preset-es2016 \
babel-preset-es2015 \

#crete directories and files
mkdir script
echo 'console.log("hi");' >> script/index.js

#create scripts
npm run set scripts build-js-browser 'browserify ./script/index.js -d -o ./dist/index.js -t [ babelify --presets [ es2015 es2016 es2017 stage-3 babili] --plugins [ transform-async-to-generator transform-react-jsx minify-constant-folding minify-mangle-names ] ] -v'
