const path = require("path");

module.exports = {
    entry: "./entry.jsx",
    output: {
        path: path.resolve(__dirname),
        filename: 'bundle.js'
    },
    module:{
        rules: [
            {
                use: {
                    loader: 'babel-loader',
                    options: {
                        presets: ['@babel/env', '@babel/react']
                    }
                }
            }
        ]
    },
    devtool: 'source-map',
    resolve: {
        extensions: ['.js', '.jsx', '*']
    }
}