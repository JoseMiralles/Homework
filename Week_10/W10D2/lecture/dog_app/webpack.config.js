const path = require('path');

module.exports = {
    entry: './frontend/entry.jsx',
    output: {
        path: path.resolve(__dirname),
        filename: 'bundle.js'
    },
    devtool: 'sourcemap',
    resolve: {
        extensions: [".js", ".jsx", "*"],
    },
    module: {
        rules: [
            {
                test: /\.jsx?$/,
                exclude: /(node_modules)/,
                use: {
                    loader: 'babel-loader',
                    query: {
                        presets: ['@babel/env', '@bable/react']
                    }
                }
            }
        ]
    }
}