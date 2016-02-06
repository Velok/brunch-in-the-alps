(function() {
  "use strict";

  var App = {
    init: function() {
      let versionstrings = []
      versionstrings.push(`Jquery Version: ${$.fn.jquery} initialized`)
      versionstrings.push(`Jquery-UI Version: ${$.ui.version} initialized`)

      console.log('App initialized.');
      for(let string of versionstrings) {
        console.log(string)
      }

      let tmpl = require('templates/init');
      $('body').append(tmpl({strings: versionstrings}));
    }
  };

  module.exports = App;
})();
