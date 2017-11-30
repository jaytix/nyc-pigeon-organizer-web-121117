require 'pry'

def nyc_pigeon_organizer(data)
  hash = Hash.new
  #array = []
  data.each_with_index do |stats, i|
    #binding.pry
    stats[1].each_with_index do |specificStat, j|
      #binding.pry
      specificStat[1].each do |name|
       #binding.pry
          if !hash.keys.include?(name)
            #array.push(specificStat[0])
            hash[name] = {data.keys[i] => [stats[1].keys[j]]}
          elsif hash.keys.include?(name)
            binding.pry
            hash[name].values << [stats[1].keys[j]]
        end
      end
    end
  end
  puts hash
end

# def nyc_pigeon_organizer(data)
#   data.each_with_obj(Hash.new { |a, b| a[b] = data })
#     binding.pry
#   end
#
# end
