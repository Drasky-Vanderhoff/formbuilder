# Karma configuration

module.exports = (config) ->
    config.set
        # base path, that will be used to resolve files and exclude
        basePath: '../'

        # list of files / patterns to load in the browser
        files: [
            # Dependencies.
            'vendor/js/vendor.js'

            'dist/formbuilder-min.js'

            'test/*_test.coffee'
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

        browsers: ['Chrome']

        # Continuous Integration mode
        # if true, it capture browsers, run tests and exit
        # singleRun: yes

        # compile coffee scripts
        preprocessors: '**/*.coffee': 'coffee'

        frameworks: ['jasmine']

        junitReporter:
            outputFile: "test_out/unit.xml"
            suite: "unit"

        plugins: [
            'karma-jasmine',
            'karma-coffee-preprocessor',
            'karma-chrome-launcher',
            'karma-firefox-launcher'
        ]
