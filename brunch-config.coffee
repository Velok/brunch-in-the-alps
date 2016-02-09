module.exports = config:
  npm:
    enabled: true
  server:
    run: yes
    port: 3000
    hostname: '0.0.0.0'
  conventions:
    assets: [
        /static\//,
        /libs\//
    ]
    ignored: [
      /libs\/_info\.txt/
    ]
    vendor: /#/
  plugins:
    autoReload:
      delay: 0
    jaded:
      staticPatterns: /^app(\/|\\)markup(\/|\\)(.+)\.jade$/
      jade:
        pretty: yes
    babel:
      pattern: /\.(es6|jsx)$/
  files:
    stylesheets: joinTo:
      'app.css': /styles\//
    javascripts: joinTo:
      'app.js': /scripts\//
      'libs.js': /^(?!app\/)/
    templates: joinTo:
      'templates.js': /templates\//
