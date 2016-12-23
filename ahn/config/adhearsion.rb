# encoding: utf-8

Adhearsion.config do |config|

  # Centralized way to specify any Adhearsion core or plugin configuration
  # - Execute rake config:show to view the active configuration values
  #
  # To update a plugin configuration you can write either:
  #
  #    * Option 1
  #        Adhearsion.config.<plugin-name> do |config|
  #          config.<key> = <value>
  #        end
  #
  #    * Option 2
  #        Adhearsion.config do |config|
  #          config.<plugin-name>.<key> = <value>
  #        end

  config.env :development do
    config.core.logging.level = :debug
  end

  ##
  # Use with Rayo over XMPP (eg Voxeo PRISM or FreeSWITCH mod_rayo)
  #
  # config.core.username = "usera@freeswitch.local-dev.mojolingo.com" # Your XMPP JID for use with Rayo
  # config.core.password = "1" # Your XMPP password

  ##
  # Use with Asterisk
  #
  # config.core.type = :asterisk # Use Asterisk
  # config.core.username = "manager" # Your AMI username
  # config.core.password = "password" # Your AMI password
  # config.core.host = "asterisk.local-dev.mojolingo.com" # Your AMI host
end
