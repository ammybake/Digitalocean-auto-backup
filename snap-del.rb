#!/usr/bin/ruby

require 'droplet_kit'
token='token'
client = DropletKit::Client.new(access_token: token)

client.snapshots.delete(id: 'id')
