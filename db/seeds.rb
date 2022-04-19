require 'open-uri'

puts "cleaning DBs"

Project.destroy_all
User.destroy_all

puts "DBs destroyed for good"

puts "creating the one and only user"

gala = User.create!(
  username: 'enqio',
  description: 'this is me',
  name: 'gala'
)

puts "User loaded inside the matrix"

puts "creating projects..."

woolks = Project.create!(
  title: 'Woolks',
  description: 'Mobile web app to walk your dog',
  user: gala
)
woolks.photos.attach(
  [
    {
      io: URI.open('https://res.cloudinary.com/dwuhtvghy/image/upload/v1650361230/Projects/Woolks/woolks_1_zzl9ue.png'),
      filename: 'woolks_1_zzl9ue.png',
      content_type: 'image/png'
    },
    {
      io: URI.open('https://res.cloudinary.com/dwuhtvghy/image/upload/v1650361226/Projects/Woolks/woolks_2_jrcsjk.png'),
      filename: 'woolks_2_jrcsjk.png',
      content_type: 'image/png'
    },
       {
      io: URI.open('https://res.cloudinary.com/dwuhtvghy/image/upload/v1650361230/Projects/Woolks/woolks_3_z79s6g.png'),
      filename: 'woolks_3_z79s6g.png',
      content_type: 'image/png'
    },
    {
      io: URI.open('https://res.cloudinary.com/dwuhtvghy/image/upload/v1650361226/Projects/Woolks/woolks_4_pgw31e.png'),
      filename: 'woolks_4_pgw31e.png',
      content_type: 'image/png'
    },
       {
      io: URI.open('https://res.cloudinary.com/dwuhtvghy/image/upload/v1650361230/Projects/Woolks/woolks_5_v6kekp.png'),
      filename: 'woolks_5_v6kekp.png',
      content_type: 'image/png'
    },
    {
      io: URI.open('https://res.cloudinary.com/dwuhtvghy/image/upload/v1650361226/Projects/Woolks/woolks_6_sibfko.png'),
      filename: 'woolks_6_sibfko.png',
      content_type: 'image/png'
    },
    {
      io: URI.open('https://res.cloudinary.com/dwuhtvghy/image/upload/v1650361226/Projects/Woolks/woolks_7_byliak.png'),
      filename: 'woolks_7_byliak.png',
      content_type: 'image/png'
    }
  ]
)


pig_rent = Project.create!(
  title: 'PigRent',
  description: 'Airbnb clone to rent pigs',
  user: gala
)
pig_rent.photos.attach(
  [
    {
      io: URI.open('https://res.cloudinary.com/dwuhtvghy/image/upload/v1650362121/Projects/Pig_rent/pigrent_1_cctt1k.png'),
      filename: 'pigrent_1_cctt1k.png',
      content_type: 'image/png'
    },
    {
      io: URI.open('https://res.cloudinary.com/dwuhtvghy/image/upload/v1650362121/Projects/Pig_rent/pigrent_2_t4lndz.png'),
      filename: 'pigrent_2_t4lndz.png',
      content_type: 'image/png'
    },
    {
      io: URI.open('https://res.cloudinary.com/dwuhtvghy/image/upload/v1650362121/Projects/Pig_rent/pigrent_3_rqke80.png'),
      filename: 'pigrent_3_rqke80.png',
      content_type: 'image/png'
    },
    {
      io: URI.open('https://res.cloudinary.com/dwuhtvghy/image/upload/v1650362121/Projects/Pig_rent/pigrent_4_uykfqf.png'),
      filename: 'pigrent_4_uykfqf.png',
      content_type: 'image/png'
    },
    {
      io: URI.open('https://res.cloudinary.com/dwuhtvghy/image/upload/v1650362121/Projects/Pig_rent/pigrent_5_necizg.png'),
      filename: 'pigrent_5_necizg.png',
      content_type: 'image/png'
    },
    {
      io: URI.open('https://res.cloudinary.com/dwuhtvghy/image/upload/v1650362121/Projects/Pig_rent/pigrent_6_dlgiqr.png'),
      filename: 'pigrent_6_dlgiqr.png',
      content_type: 'image/png'
    },
    {
      io: URI.open('https://res.cloudinary.com/dwuhtvghy/image/upload/v1650362121/Projects/Pig_rent/pigrent_7_lsdlgk.png'),
      filename: 'pigrent_7_lsdlgk.png',
      content_type: 'image/png'
    }
  ]
)

puts "Projects are here !!"
