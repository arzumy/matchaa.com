# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

matchaa = Category.find_or_create_by_name('The Real Matchaa')
matchaa.questions.create(body: 'Have you ever spent more than a RM1000 on a round of drinks?').save
matchaa.questions.create(body: 'Have you ever sunk a boat?').save
matchaa.questions.create(body: 'Have you ever stolen something big?').save
matchaa.questions.create(body: 'Have you ever ridden an animal other than a horse?').save
matchaa.questions.create(body: 'Have you ever been bitten on the balls by an animal?').save
matchaa.questions.create(body: 'Have you ever broken a bone and not realised?').save
matchaa.questions.create(body: 'Have you ever set yourself on fire?').save
matchaa.questions.create(body: 'Have you ever knocked anyone out?').save
matchaa.questions.create(body: "Have you ever woken up somewhere and not known how you've got there?").save
matchaa.questions.create(body: 'Have you ever spent a night in jail?').save

tech = Category.find_or_create_by_name('Tech Mastaa')
tech.questions.create(body: 'Would you use Windows for a girl?').save
tech.questions.create(body: "Would you use Bing if Google didn't exist?").save
tech.questions.create(body: 'Have you ever used Excel for writing a document?').save
tech.questions.create(body: "Have you ever found sick porn sites on your mom's browsing history and pretend you didn't see it?").save
tech.questions.create(body: "Would you ever fix the printer for your girlfriend's mum?").save
tech.questions.create(body: 'Have you ever pirated software?').save
tech.questions.create(body: 'Have you ever got infected by one of those dumb pen drive viruses?').save
tech.questions.create(body: 'Can you assemble computer a computer from scratch?').save
tech.questions.create(body: 'Telnet or SSH?').save
tech.questions.create(body: 'Mario or Pac-man?').save

love = Category.find_or_create_by_name('Matchaa Love')
love.questions.create(body: "Have you ever seen porn that's made you feel sick?").save
love.questions.create(body: "Have you ever pretended to be gay to talk to a woman?").save
love.questions.create(body: "Would you ever fix the printer for your girlfriend's mum?").save
love.questions.create(body: "Have you ever slept with a woman heavier than you? ").save
love.questions.create(body: "Have you ever opened the door for a lady?").save
love.questions.create(body: "Have you ever had more than one girlfriend at a time?").save
love.questions.create(body: "Have you ever spent more than RM200 for flowers for a girl?").save
love.questions.create(body: "Do you like to cuddle").save
love.questions.create(body: "Have you ever gotten into trouble with the law for the sake of a woman").save
love.questions.create(body: "Do you ever write poetry").save