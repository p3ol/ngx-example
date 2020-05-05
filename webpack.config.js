const path = require('path');
const webpack = require('webpack');
const HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
  entry: './app/index.js',
  mode: 'development',
  resolve: {
    symlinks: true,
  },
  module: {
    rules: [{
      exclude: /node_modules/,
      test: /\.js/,
      loader: 'babel-loader',
    }, {
      test: /[\/\\]@angular[\/\\]core[\/\\].+\.js$/,
      parser: { system: true },
    }],
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: './app/index.html',
      minify: {
        caseSensitive: true,
        collapseWhitespace: true,
        conservativeCollapse: true,
        collapseBooleanAttributes: true,
        removeCommentsFromCDATA: true,
        minifyJS: true,
      },
    }),
    new webpack.LoaderOptionsPlugin({
      debug: true,
    }),
  ],
  output: {
    path: path.resolve('./dist'),
    filename: 'bundle.[hash].js',
  },
  devtool: 'inline-source-map',
  devServer: {
    contentBase: './dist',
    port: 8888,
    host: 'localhost',
    historyApiFallback: true,
  },
};
