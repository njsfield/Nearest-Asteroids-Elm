module.exports = {
  input: 'src/css/main.css',
  output: 'public/css/style.min.css',
  use: [
    'postcss-import',
    'autoprefixer',
    'postcss-custom-media',
    'postcss-clean',
    'postcss-custom-properties'
  ]
}
