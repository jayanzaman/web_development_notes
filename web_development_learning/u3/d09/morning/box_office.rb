rating_str = "pg-thirteen,pg,r,pg,pg-thirteen,pg-thirteen,pg-thirteen,r,r,r,r,pg-thirteen,r,pg-thirteen,r,r,r,r,r,r,pg-thirteen,r,pg-thirteen,pg-thirteen,pg,r,r,pg,pg"

rating_arr = rating_str.split(',')

# p rating_arr


movie_str = "the hunger games: mockingjay - part 1|penguins of madagascar|horrible bosses 2|big hero 6|interstellar|dumb and dumber to|the theory of everything|gone girl|the pyramid|birdman|nightcrawler|st. vincent|fury|beyond the lights|wild|foxcatcher|the homesman|whiplash|john wick|the equalizer|guardians of the galaxy|the judge|the maze runner|ouija|alexander and the terrible, horrible, no good, very bad day|rosewater|hector and the search for happiness|the book of life|the boxtrolls"

movie_arr = movie_str.split('|')
# p movie_arr

score_str = "65%, 76%*71%, 68%*34%, 60%*89%, 94%*73%, 87%*26%, 49%*81%, 84%*88%, 89%*7%, 39%*94%, 86%*95%, 87%*76%, 82%*78%, 88%*84%, 83%*92%, 80%*86%, 77%*79%, 53%*96%, 96%*85%, 82%*61%, 81%*90%, 94%*47%, 76%*63%, 73%*7%, 29%*62%, 65%*74%, 75%*36%, 67%*82%, 82%*75%, 68%"

score_arr = score_str.split(',')

score_final_array = []

score_arr.each do |x|
  score_pair_arr = x.split('*').join(', ')
  (score_final_array << score_pair_arr)
end

# p score_final_array

rating_arr.map!{|x| x == "pg-thirteen"? "pg-13": x}

# p rating_arr

rating_arr.each do |x|
  x.upcase!
end

capitalized_movie_arr = []

movie_arr.map do |x|
 capitalized_movie_arr.push(x.split.map(&:capitalize).join(' '))
end

# p capitalized_movie_arr

arr_of_movie_titles_hash = capitalized_movie_arr.map do |movie|
  {title: movie}
end

# p arr_of_movie_titles_hash

arr_of_score_hash = score_final_array.map do |score|
  {score: score}
end

# p arr_of_score_hash

arr_of_movie_titles_hash.each_with_index.map do |movie, index|
  {title: movie}

