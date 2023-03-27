puts "...seeding"


hero1 = Hero.create(name: "Paul Soles", super_name: "Hulk")
hero2 = Hero.create(name: "Chris Wiggins", super_name: "Thor")
hero3 = Hero.create(name: "Vita Linder", super_name: "Betty Ross")
hero4 = Hero.create(name: "John vernom", super_name: "Jack Frost")


#adding powers
power1 = Power.create(name: "super strength", description: "gives the wielder super-human strengths")
power2 = Power.create(name: "God of thunder", description: "Able to control sky energy and weather")
power3 = Power.create(name: "Super speed", description: "Bird-like wings from her back used to fly at highspeed through th air and perform aerial attacks")
power4 = Power.create(name: "God in Ice", description: "Generate sub-freezing temperature,combined with ambient water vapor")

# #adding heropowers
heropower1 = HeroPower.create(hero: hero1, power: power1, strength: "Strong")
heropower2 = HeroPower.create(hero: hero2, power: power2, strength: "Avarage")
heropower3 = HeroPower.create(hero: hero3, power: power3, strength: "weak")
heropower4 = HeroPower.create(hero: hero4, power: power4, strength: "weak")

puts "...end seeding"

