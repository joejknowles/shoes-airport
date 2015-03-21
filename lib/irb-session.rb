irb.rb

2.2.0 :001 > require './lib/plane.rb'
 => true
2.2.0 :002 > require './lib/airport.rb'
 => true
2.2.0 :003 > plane1 = Plane.new
 => #<Plane:0x007f960a9989a8 @status="flying">
2.2.0 :004 > plane2 = Plane.new
 => #<Plane:0x007f960aa04540 @status="flying">
2.2.0 :005 > antarctic_airport = Airport.new(climate:8, capacity:2)
 => #<Airport:0x007f960b01a560 @planes=[], @capacity=2, @climate=8>
2.2.0 :006 > antarctic_airport.land plane1
 => "landed"
2.2.0 :007 > antarctic_airport
 => #<Airport:0x007f960b01a560 @planes=[#<Plane:0x007f960a9989a8 @status="landed">], @capacity=2, @climate=8>
2.2.0 :008 > antarctic_airport.land plane2
 => "landed"
2.2.0 :009 > antarctic_airport
 => #<Airport:0x007f960b01a560 @planes=[#<Plane:0x007f960a9989a8 @status="landed">, #<Plane:0x007f960aa04540 @status="landed">], @capacity=2, @climate=8>
2.2.0 :010 > antarctic_airport.take_off plane1
RuntimeError: Stormy
  from /Users/josephknowles/Projects/airport_challenge/lib/airport.rb:32:in `take_off'
  from (irb):10
  from /Users/josephknowles/.rvm/rubies/ruby-2.2.0/bin/irb:11:in `<main>'
2.2.0 :011 > antarctic_airport.take_off plane1
RuntimeError: Stormy
  from /Users/josephknowles/Projects/airport_challenge/lib/airport.rb:32:in `take_off'
  from (irb):11
  from /Users/josephknowles/.rvm/rubies/ruby-2.2.0/bin/irb:11:in `<main>'
2.2.0 :012 > antarctic_airport.take_off plane1
RuntimeError: Stormy
  from /Users/josephknowles/Projects/airport_challenge/lib/airport.rb:32:in `take_off'
  from (irb):12
  from /Users/josephknowles/.rvm/rubies/ruby-2.2.0/bin/irb:11:in `<main>'
2.2.0 :013 > antarctic_airport.take_off plane1
RuntimeError: Stormy
  from /Users/josephknowles/Projects/airport_challenge/lib/airport.rb:32:in `take_off'
  from (irb):13
  from /Users/josephknowles/.rvm/rubies/ruby-2.2.0/bin/irb:11:in `<main>'
2.2.0 :014 > antarctic_airport.take_off plane1
RuntimeError: Stormy
  from /Users/josephknowles/Projects/airport_challenge/lib/airport.rb:32:in `take_off'
  from (irb):14
  from /Users/josephknowles/.rvm/rubies/ruby-2.2.0/bin/irb:11:in `<main>'
2.2.0 :015 > antarctic_airport.land plane1
RuntimeError: Airport full
  from /Users/josephknowles/Projects/airport_challenge/lib/airport.rb:17:in `check_land_safety'
  from /Users/josephknowles/Projects/airport_challenge/lib/airport.rb:10:in `land'
  from (irb):15
  from /Users/josephknowles/.rvm/rubies/ruby-2.2.0/bin/irb:11:in `<main>'
2.2.0 :016 > antarctic_airport.take_off plane1
 => "flying"
2.2.0 :017 > plane1
 => #<Plane:0x007f960a9989a8 @status="flying">
2.2.0 :018 > antarctic_airport.land plane1
RuntimeError: Stormy
  from /Users/josephknowles/Projects/airport_challenge/lib/airport.rb:19:in `check_land_safety'
  from /Users/josephknowles/Projects/airport_challenge/lib/airport.rb:10:in `land'
  from (irb):18
  from /Users/josephknowles/.rvm/rubies/ruby-2.2.0/bin/irb:11:in `<main>'
2.2.0 :019 > exit