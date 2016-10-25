#install npm modules
npm install --save-dev \
babel-cli \
babel-polyfill \
babel-plugin-transform-react-jsx \
babel-plugin-transform-es2015-destructuring \
babel-plugin-transform-async-to-generator \
babel-plugin-transform-async-generator-functions \
babel-preset-stage-3 \
babel-preset-es2017 \
babel-preset-es2016 \
babel-preset-es2015 \

#crete directories and files
mkdir node
echo 'console.log("hi");' >> node/index.js

#create scripts
npm run set scripts node 'babel-node --debug --presets es2015,es2016,es2017,stage-3 --plugins transform-async-to-generator,transform-react-jsx,transform-es2015-destructuring,transform-async-generator-functions node/index.js'
