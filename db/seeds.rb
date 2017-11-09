# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

generic_chat = Source.create(
  category: 'generic',
  name: 'Chat',
  display_name: 'Chat'
)

generic_email = Source.create(
  category: 'generic',
  display_name: 'Email',
  name: 'Email'
)

generic_social = Source.create(
  category: 'generic',
  name: 'Social',
  display_name: 'Social'
)

application_imessage = Source.create(
  category: 'application',
  name: 'iMessage',
  display_name: 'iMessage',
  parent: generic_chat
)

application_twitter = Source.create(
  category: 'application',
  name: 'Twitter',
  display_name: 'Twitter',
  parent: generic_social
)

application_gmail = Source.create(
  category: 'application',
  name: 'Gmail',
  display_name: 'Gmail',
  parent: generic_email
)

application_telegram = Source.create(
  category: 'application',
  name: 'Telegram',
  display_name: 'Telegram',
  parent: generic_chat
)

client_ios_telegram = Source.create(
  category: 'client',
  name: 'ph.telegra.Telegraph',
  display_name: 'Telegram',
  client_type: 'ios',
  parent: application_telegram
)

client_ios_imessage = Source.create(
  category: 'client',
  name: 'com.apple.MobileSMS',
  display_name: 'iMessage',
  client_type: 'ios',
  parent: application_imessage
)

client_web_twitter = Source.create(
  category: 'client',
  name: 'twitter',
  display_name: 'Twitter',
  client_type: 'chrome-extension',
  parent: application_twitter
)
