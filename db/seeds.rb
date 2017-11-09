# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

generic_chat = Source.create(
  category: 'generic',
  name: 'Chat'
)

generic_email = Source.create(
  category: 'generic',
  name: 'Email'
)

generic_social = Source.create(
  category: 'generic',
  name: 'Social'
)

application_imessage = Source.create(
  category: 'application',
  name: 'iMessage',
  parent: generic_chat
)

application_twitter = Source.create(
  category: 'application',
  name: 'Twitter',
  parent: generic_social
)

application_gmail = Source.create(
  category: 'application',
  name: 'Gmail',
  parent: generic_email
)
