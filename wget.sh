#!/bin/sh -ex
wget \
  --mirror \
  --page-requisites \
  --span-hosts \
  --domains=forum.open-emoji-battler.community,user-images.githubusercontent.com \
  --convert-links \
  --adjust-extension \
  --compression=auto \
  --reject-regex "/search|\.rss|\.otf" \
  --execute robots=off \
  --random-wait \
  --wait=1 \
  --user-agent="Googlebot/2.1 (+http://www.google.com/bot.html)" \
  --no-cookies \
  --tries=5 \
  --directory-prefix="./docs" \
  https://forum.open-emoji-battler.community
