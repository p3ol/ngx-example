path = require "path"
webpack = require "webpack"
HtmlWebpackPlugin = require "html-webpack-plugin"

module.exports =
    entry: "./app/index.coffee"
    mode: "development"
    resolve:
        extensions: [".js", ".coffee"]
    module:
        rules: [{
            test: /\.coffee$/
            use: [
                {
                    loader: "babel-loader"
                    query:
                        presets: ["env"]
                }
                "coffee-loader"
            ]
        }, {
            test: /\.css$/
            use: ["style-loader", "css-loader"]
        }]
    plugins: [
        new HtmlWebpackPlugin
            template: "./app/index.html"
            minify:
                caseSensitive: true
                collapseWhitespace: true
                conservativeCollapse: true
                collapseBooleanAttributes: true
                removeCommentsFromCDATA: true
                minifyJS: true
        new webpack.LoaderOptionsPlugin
            debug: true
    ]
    output:
        path: path.join __dirname, "dist"
        filename: "bundle.[hash].js"
    devtool: "inline-source-map"
    devServer:
        contentBase: "./dist"
        port: 8888
        host: "localhost"
        historyApiFallback: true
