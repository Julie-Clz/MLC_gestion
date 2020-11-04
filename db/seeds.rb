# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Delete tasks"
Task.destroy_all

puts "Delete Services"
Service.destroy_all

puts "creating services..."

service_one = Service.create(name: "Comptabilité")
file = URI.open('https://res.cloudinary.com/dl8y1oay0/image/upload/v1604505631/compta_pwpk9s.jpg')
service_one.photo.attach(io: file, filename: 'compta_pwpk9s.jpg', content_type: 'image/jpg')
service_one.save!

service_two = Service.create(name: "Suivi des ventes")
file = URI.open('https://res.cloudinary.com/dl8y1oay0/image/upload/v1604505637/invoice_ku8slc.jpg')
service_two.photo.attach(io: file, filename: 'invoice_ku8slc.jpg', content_type: 'image/jpg')
service_two.save!

service_three = Service.create(name: "Gestion administrative")
file = URI.open('https://res.cloudinary.com/dl8y1oay0/image/upload/v1604505646/secretariat_ruwc4n.jpg')
service_three.photo.attach(io: file, filename: 'secretariat_ruwc4n.jpg', content_type: 'image/jpg')
service_three.save!

puts "services done!"

puts "creating tasks..."

task_one = Task.create(content: "Mise en place d’outils de contrôle de gestion")
task_one.service = service_one
task_one.save!

task_two = Task.create(content: "Suivi de l’activité (bilan prévisionnel, compte de résultat)")
task_two.service = service_one
task_two.save!

task_three = Task.create(content: "Élaboration des tableaux de bord de trésorerie")
task_three.service = service_one
task_three.save!

task_four = Task.create(content: "Pointage comptable")
task_four.service = service_one
task_four.save!

task_five = Task.create(content: "Préparation des pièces comptables")
task_five.service = service_one
task_five.save!

task_six = Task.create(content: "Liaison avec l’expert-comptable")
task_six.service = service_one
task_six.save!

task_seven = Task.create(content: "Rapprochements bancaires")
task_seven.service = service_one
task_seven.save!

task_eight = Task.create(content: "Numérisation et archivage des documents comptables")
task_eight.service = service_one
task_eight.save!

task_nine = Task.create(content: "Edition des factures")
task_nine.service = service_two
task_nine.save!

task_ten = Task.create(content: "Relance clients")
task_ten.service = service_two
task_ten.save!

task_eleven = Task.create(content: "Dématérialisation des documents commerciaux (factures, devis, contrats, relances)")
task_eleven.service = service_two
task_eleven.save!

task_twelve = Task.create(content: "Mise en place d’un tableau de bord commercial")
task_twelve.service = service_two
task_twelve.save!

task_thirteen = Task.create(content: "Suivi des paiements et des encaissements")
task_thirteen.service = service_two
task_thirteen.save!

task_fourteen = Task.create(content: "Déclaration mensuelle de chiffre d'affaires")
task_fourteen.service = service_two
task_fourteen.save!

task_fifteen = Task.create(content: "Création de votre base de données (mise à jour de vos contacts...)")
task_fifteen.service = service_two
task_fifteen.save!

task_sixteen = Task.create(content: "Rapprochement des bons de livraison avec les factures fournisseurs")
task_sixteen.service = service_two
task_sixteen.save!

task_seventeen = Task.create(content: "Gestion des notes de frais")
task_seventeen.service = service_three
task_seventeen.save!

task_eighteen = Task.create(content: "Organisation de vos déplacements (transports, restauration et hébergement)")
task_eighteen.service = service_three
task_eighteen.save!

task_nineteen = Task.create(content: "Création de votre site internet via notre prestataire")
task_nineteen.service = service_three
task_nineteen.save!

task_twenty = Task.create(content: "Démarches administratives, assurances")
task_twenty.service = service_three
task_twenty.save!

task_twentyone = Task.create(content: "Suivi des formalités administratives")
task_twentyone.service = service_three
task_twentyone.save!

task_twentytwo = Task.create(content: "Communication avec les services fiscaux")
task_twentytwo.service = service_three
task_twentytwo.save!

task_twentythree = Task.create(content: "Relations avec l’Urssaf, les caisses de retraite et la mutuelle")
task_twentythree.service = service_three
task_twentythree.save!

puts "Done!"