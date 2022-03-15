#! /usr/bin/bash
echo "mkreact is running" &&
mkdir $1 &&
cd $1 &&
cp -R /usr/local/react-make-script/react-template/* "$PWD/" &&
mv babelrc .babelrc && mv gitignore .gitignore &&
npm init -y && 
echo "start installing..." &&
npm install --save-dev @babel/core @babel/preset-env @babel/preset-react @testing-library/jest-dom @testing-library/react @testing-library/user-event babel-jest babel-loader html-loader html-webpack-plugin jest webpack webpack-cli webpack-dev-server &&
npm install react react-dom &&
code $PWD &&
echo "My react app was created to start type cd $1 npm start"