# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Service.destroy_all

Service.create(name: "Laver le linge", description: "Le linge est sale il faut le laver", price: 7)
Service.create(name: "Manger", description: "Manger des pates au resto", price: 10)
Service.create(name: "Promener le chien", description: "Le chien doit faire ses besoins promène le", price: 5)
Service.create(name: "Monter la commode", description: "La voisine a du mal à monter sa commode", price: 20)
Service.create(name: "Fermer sa gueule", description: "Tu énerves tout le monde tais-toi", price: 1)
Service.create(name: "Aller au boulot", description: "Tu devrais songer à gagner ta vie", price: 2000)
