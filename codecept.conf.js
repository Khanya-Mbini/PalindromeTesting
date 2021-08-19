exports.config = {
  output: './output',
  helpers: {
    Puppeteer: {
      url: 'http://localhost',
      show: true,
      ignoreDefaultArgs: ['--disable-extensions'],
      waitForTimeout: 5000,
      waitForNavigation: 'networkidle0',
      waitForAction: 0,
    }
  },
  include: {
    I: './steps_file.js'
  },
  mocha: {
    reporterOptions: {
    reportDir: "output"
    }
  },
  bootstrap: null,
  teardown: null,
  hooks: [],
  gherkin: {
    features: './features/*.feature',
    steps: ['./step_definitions/steps.js']
  },
  plugins: {
    screenshotOnFail: {
      enabled: true
    },
    pauseOnFail: {},
    retryFailedStep: {
      enabled: true
    },
    tryTo: {
      enabled: true
    }

  },
  tests: 'npx create-codeceptjs . --puppeteer/*_test.js',
  name: 'Palindrome'
}