module.exports = {
  'presets': [
    ['@babel/preset-env', {
      corejs: 3,
      useBuiltIns: 'usage',
    }],
  ],
  'plugins': [
    ['@babel/plugin-proposal-decorators', { legacy: true }],
    ['@babel/plugin-proposal-class-properties', { loose: true }],
    ['@babel/plugin-transform-runtime', {
      corejs: 3,
    }],
  ],
};
