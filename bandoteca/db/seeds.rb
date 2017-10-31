# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'casz@email.com', password: "123456", password_confirmation: "123456", admin: true)
Genre.create(name_genre: 'Rock', image_url_genre: "http://images5.fanpop.com/image/photos/27300000/Guitar-guitar-27380496-500-375.jpg")
Band.create(name: 'Metallica', image_url: "https://2982-presscdn-29-70-pagely.netdna-ssl.com/wp-content/uploads/2016/03/Metallica_3-300x200.jpg",
            price: 100000,
            review: "Metallica is an American heavy metal band based in San Rafael, California. The band was formed in 1981 in Los Angeles when vocalist/guitarist
                    James Hetfield responded to an advertisement posted by drummer Lars Ulrich in a local newspaper. Metallica's current lineup comprises founding
                    members Hetfield and Ulrich, longtime lead guitarist Kirk Hammett, and bassist Robert Trujillo. Guitarist Dave Mustaine (who went on to form Megadeth)
                    and bassists Ron McGovney, Cliff Burton, and Jason Newsted are also former members of the band.",
            genre_id: 1)
