require 'pry'

def nyc_pigeon_organizer(data)
  hash = Hash.new
  array = []
  data.each_with_index do |stats, i|
    #binding.pry
    stats[1].each do |specificStat|
      #binding.pry
      specificStat[1].each do |name|
       #binding.pry
          binding.pry
          if !hash.keys.include?(name)
            hash[name] = {data.keys[i] => [specificStat[0]]}
          else
            hash[name] = {data.keys[i] => [specificStat[0]] << [specificStat[0]]}
        end
      end
    end
  end
  puts hash
end
