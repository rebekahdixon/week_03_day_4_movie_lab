require_relative('models/casting')
require_relative('models/movie')
require_relative('models/star')

require('pry-byebug')

Casting.delete_all()
Star.delete_all()
Movie.delete_all()

star1 = Star.new({'first_name' => 'alan', 'last_name' => 'alda'})
star1.save()
star2 = Star.new({'first_name' => 'sarah-jessica', 'last_name' => 'parker'})
star2.save()
star3 = Star.new({'first_name' => 'helen', 'last_name' => 'mirren'})
star3.save()
star4 = Star.new({'first_name' => 'george', 'last_name' => 'clooney'})
star4.save()

movie1 = Movie.new({'title' => 'starry skies', 'genre' => 'rom_com'})
movie1.save()
movie2 = Movie.new({'title' => 'moon_light', 'genre' => 'horror'})
movie2.save()
movie3 = Movie.new({'title' => 'sunshine', 'genre' => 'comedy'})
movie3.save()

casting1 = Casting.new({'movie_id' => movie3.id, 'star_id' => star2.id, 'fee' => '250'})
casting1.save()
casting2 = Casting.new({'movie_id' => movie1.id, 'star_id' => star3.id, 'fee' => '340'})
casting2.save()
casting3 = Casting.new({'movie_id' => movie2.id, 'star_id' => star2.id, 'fee' => '450'})
casting3.save()
casting4 = Casting.new({'movie_id' => movie1.id, 'star_id' => star4.id, 'fee' => '175'})
casting4.save()
casting5 = Casting.new({'movie_id' => movie3.id, 'star_id' => star1.id, 'fee' => '670'})
casting5.save()

star1.first_name = 'Ryan'
star1.update()
