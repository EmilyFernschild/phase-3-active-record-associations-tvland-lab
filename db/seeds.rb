puts "seeding"

a1 = Actor.create(first_name:"Emily", last_name:"Fern")
a2 = Actor.create(first_name:"James", last_name:"Murray")

n1 = Network.create(call_letters:"FOX", channel:5)
n2 = Network.create(call_letters:"CW", channel:8)

s1 = Show.create(name:"Friends", day:"Wednesday", season:"4", genre:"Comedy", network_id:n1.id)
s2 = Show.create(name:"Supernatural", day:"Friday", season:"15", genre:"Mysery", network_id:n2.id)

c1 = Character.create(name:"Joey", actor_id:a1.id, show_id:s1.id, catchphrase:"how YOU doin")
c2 = Character.create(name:"Rachel", actor_id:a1.id, show_id:s2.id, catchphrase:"we were on a break")
c3 = Character.create(name:"Sam", actor_id:a2.id, show_id:s1.id, catchphrase:"Dean!")
c4 = Character.create(name:"Dean", actor_id:a2.id, show_id:s2.id, catchphrase:"Awesome")

puts "done seeding"