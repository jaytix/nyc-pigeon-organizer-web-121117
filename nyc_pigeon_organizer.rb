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
            #array.push(specificStat[0])
            hash[name] = {data.keys[i] => [stats[1].keys[i]]}
          elsif hash.keys.include?(name)
            array.push(stats[i])
        end
      end
    end
  end
  puts hash
end
