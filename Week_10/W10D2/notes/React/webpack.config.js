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
                    loader: 'babel',
                    options: {
                        presets: ['es2015', 'react']
                    }
                }
            }
        ]
    },
    // devtool: 'source-map',
    // resolve: {
    //     extensions: ['.js', '.jsx', '*']
    // }
}