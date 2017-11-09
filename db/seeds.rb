# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jose_user = User.create(
  id: 1,
  first_name: 'Jose Luis',
  last_name: 'López',
  avatar_url: 'https://ca.slack-edge.com/T1C3D47HB-U2XD02KMZ-2554ba5e6b9e-128'
)

guillem_user = User.create(
  id: 2,
  first_name: 'Guillem',
  last_name: 'Roca',
  avatar_url: 'https://ca.slack-edge.com/T1C3D47HB-U2C3WPMS6-eda9b247f53c-128'
)

jose_user = User.create(
  id: 3,
  first_name: 'Gorka',
  last_name: 'Pitarch',
  avatar_url: 'https://ca.slack-edge.com/T1C3D47HB-U7J9M089Y-g76a762c16f8-128'
)

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
