const { environment } = require('@rails/webpacker');

const webpack = require('webpack');

const sassLoader = environment.loaders.get('sass');
sassLoader.use.find((item) => item.loader === 'sass-loader').options = {
  implementation: require('node-sass'),
};

environment.plugins.append(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['@popperjs/core', 'default'],
  })
);

module.exports = environment;
