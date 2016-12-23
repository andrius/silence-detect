# encoding: utf-8

class SilenceDetectApp < Adhearsion::Application
  app_name :silence_detect

  # Actions to perform when initialising the application
  #
  init do
    logger.info "This is the Adhearsion application that catches specific AMI events. It work on Asterisk PBX 1.8 to 13."
  end

  # Basic configuration for the application
  #
  config do
    greeting "Welcome", desc: "Welcome"
  end
end
