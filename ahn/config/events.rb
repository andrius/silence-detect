# encoding: utf-8

require 'pp'

Adhearsion::Events.draw do

  # Register global handlers for events
  rayo do |event|
    event_name = event.name rescue nil

    # logger.info event_name if event_name
    # logger.info event_name if event_name =~ /^Conf.+/i

    if event_name == 'ConfbridgeTalking'
      # logger.info "EVENT: #{event.inspect}\n---"

      # EVENT: #<Adhearsion::Event::Asterisk::AMI target_call_id=nil, target_mixer_name=nil, component_id=nil, source_uri=nil, domain=nil, transport=nil, timestamp=Thu, 22 Dec 2016 22:38:26 +0000, name="ConfbridgeTalking", headers={"Privilege"=>"call,all", "Timestamp"=>"1482446306.802254", "Conference"=>"888", "BridgeUniqueid"=>"d283f3d4-1606-4d8b-9c78-756c23d769c9", "BridgeType"=>"base", "BridgeTechnology"=>"softmix", "BridgeCreator"=>"ConfBridge", "BridgeName"=>"888", "BridgeNumChannels"=>"3", "Channel"=>"SIP/900-00000004", "ChannelState"=>"6", "ChannelStateDesc"=>"Up", "CallerIDNum"=>"900", "CallerIDName"=>"conf", "ConnectedLineNum"=>"<unknown>", "ConnectedLineName"=>"<unknown>", "Language"=>"en", "AccountCode"=>"", "Context"=>"test", "Exten"=>"888", "Priority"=>"3", "Uniqueid"=>"1482446005.14", "Linkedid"=>"1482446005.14", "TalkingStatus"=>"on", "Admin"=>"No"}>
      logger.info "Conference: #{event.headers['Conference']} Channel #{event.headers['Channel']} TalkingStatus #{event.headers['TalkingStatus']}"
    end
  end

  # eg Handling PeerStatus AMI events
  # ami :name => 'PeerStatus' do |event|
  #   ...
  # end

end
