require 'crb'
require 'cucumber'
require 'cucumber/formatter/unicode'
require 'cucumber/runtime'
require 'cucumber/rb_support/rb_dsl'
require 'calabash-android'
require 'calabash-android/cucumber'
require 'calabash-android/operations'
require 'calabash-android/management/app_installation'
require 'calabash-android/calabash_steps'

#require 'calabash-android/operations'
#require 'calabash-android/calabash_steps'

module CCB
  include CRB
  #include Calabash::Cucumber

  class CalabashConsole < Console
    include Calabash::Android::Operations
    def execute!
      #uninstall_apps
      #install_app(ENV["TEST_APP_PATH"])
      #install_app(ENV["APP_PATH"])
      #start_test_server_in_background
      super
    end
  end
end