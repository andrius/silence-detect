silence-detect
==============

Creates Asterisk conference with confbridge and detect silence (or when one of participants stop/start talking) through AMI event TalkingStatus

Dedicated to collect AMI TalkingStatus event and display it.

Also can be used to process any kind of AMI events (check `ahn/config/events.rb`)


After users will enter conference, it will post logs like this:

```
ahn_1       | [2016-12-22 23:34:06.377] INFO  Adhearsion::Events::Handler: Conference: 888 Channel SIP/900-00000008 TalkingStatus on
ahn_1       | [2016-12-22 23:34:14.750] INFO  Adhearsion::Events::Handler: Conference: 888 Channel SIP/901-00000009 TalkingStatus off
ahn_1       | [2016-12-22 23:34:15.335] INFO  Adhearsion::Events::Handler: Conference: 888 Channel SIP/900-00000008 TalkingStatus off
ahn_1       | [2016-12-22 23:34:16.225] INFO  Adhearsion::Events::Handler: Conference: 888 Channel SIP/900-00000008 TalkingStatus on
```

# Build

```git clone
cd silence-detect
docker-compose build --force-rm --pull```

# Configure

Everything is ready but you might edit *.conf files in asterisk folder

# Start

```
docker-compose up -d
docker-compose logs -t -f
```

# Stop

```
docker-compose stop
docker-compose rm -f
```

# Usage

There is SIP accounts 900 to 901 with password 'somepassword'.
Just configure SIP phone to use and place call to 801 (echo test), and if it were successful, dial conference at 888.

You do need at least two participants and SIP phones in order to start conference and receive TalkingStatus events.

