var stylus = require('stylus');
var autoprefixer = require('autoprefixer-stylus');

stylus(css)
  .use(autoprefixer())
  .render(function(err, output){
    console.log(output);
  });