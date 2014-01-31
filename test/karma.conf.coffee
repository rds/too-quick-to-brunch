module.exports = (config) ->
  config.set
    basePath: '../'
    files: [
      'public/app.js'
      'bower_components/react/react-with-addons.js'
      'test/helpers.coffee'
      'test/**/*_test.coffee'
    ]

    # web server port
    port: 8080

    # cli runner port
    runnerPort: 9100

    # enable / disable colors in the output (reporters and logs)
    colors: yes

    # level of logging
    # possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
    logLevel: config.LOG_INFO

    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: yes

    # Start these browsers, currently available:
    # - Chrome
    # - ChromeCanary
    # - Firefox
    # - Opera
    # - Safari
    # - PhantomJS
    browsers: ['Chrome']

    # Continuous Integration mode
    # if true, it capture browsers, run tests and exit
    singleRun: no

    # compile coffee scripts
    preprocessors: '**/*.coffee': 'coffee'

    frameworks: ['mocha', 'chai']

    plugins: [
      'karma-mocha',
      'karma-chai',
      'karma-coffee-preprocessor',
      'karma-phantomjs-launcher',
      'karma-chrome-launcher',
      'karma-firefox-launcher',
      'karma-safari-launcher'
    ]