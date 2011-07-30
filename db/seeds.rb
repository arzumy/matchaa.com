# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

matchaa = Category.find_or_create_by_name('The Real Matchaa')
matcha.build.question(body: 'Have you ever spent more than a RM1000 on a round of drinks?').save
matcha.build.question(body: 'Have you ever sunk a boat?').save
matcha.build.question(body: 'Have you ever stolen something big?').save
matcha.build.question(body: 'Have you ever ridden an animal other than a horse?').save
matcha.build.question(body: 'Have you ever been bitten on the balls by an animal?').save
matcha.build.question(body: 'Have you ever broken a bone and not realised?').save
matcha.build.question(body: 'Have you ever set yourself on fire?').save
matcha.build.question(body: 'Have you ever knocked anyone out?').save
matcha.build.question(body: 'Have you ever woken up somewhere and not known how you’ve got there?').save
matcha.build.question(body: 'Have you ever spent a night in jail?').save

tech = Category.find_or_create_by_name('Tech Mastaa')
tech.build.question(body: 'Would you use Windows for a girl?').save
tech.build.question(body: 'Would you use Bing if Google didn\'t exist?').save
tech.build.question(body: 'Have you ever used Excel for writing a document?').save
tech.build.question(body: 'Have you ever found sick porn sites on your mom's browsing history and pretend you didn't see it?').save
tech.build.question(body: 'Would you ever fix the printer for your girlfriend\'s mum?').save
tech.build.question(body: 'Have you ever pirated software?').save
tech.build.question(body: 'Have you ever got infected by one of those dumb pen drive viruses?').save
tech.build.question(body: 'Can you assemble computer a computer from scratch?').save
tech.build.question(body: 'Telnet or SSH?').save
tech.build.question(body: 'Mario or Pac-man?').save

love = Category.find_or_create_by_name('Matchaa Love')
love.build.question(body: "Have you ever seen porn that’s made you feel sick?").save
love.build.question(body: "Have you ever pretended to be gay to talk to a woman?").save
love.build.question(body: "Would you ever fix the printer for your girlfriend's mum?").save
love.build.question(body: "Have you ever slept with a woman heavier than you? ").save
love.build.question(body: "Have you ever opened the door for a lady?").save
love.build.question(body: "Have you ever had more than one girlfriend at a time?").save
love.build.question(body: "Have you ever spent more than RM200 for flowers for a girl?").save
love.build.question(body: "Do you like to cuddle").save
love.build.question(body: "Have you ever gotten into trouble with the law for the sake of a woman").save
love.build.question(body: "Do you ever write poetry").save