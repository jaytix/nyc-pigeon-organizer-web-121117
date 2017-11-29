require 'pry'

def nyc_pigeon_organizer(data)
  hash = Hash.new
  array = []
  data.each_with_index do |stats, i|
    #binding.pry
    stats[1].each do |specificStat|
      #binding.pry
      specificStat[1].each do |name|
       binding.pry
       if name != hash.keys
         hash[name] = {data.keys[i] => [specificStat[0]]}
       elsif name == hash.keys
         array.push(specificStat[0])
       else
         array.push(specificStat[0])
       end
      end
    end
  end
  puts hash
end


# def reformat_languages(languages_by_style)
#   hash = Hash.new
#   languages_by_style.each do |styles|
#     styles.each_with_index do |style, i|
#       styles[1].each do |language, types|
#         hash[language] = {}
#           types.each do |type, value|
#           hash[language] = {type => value}
#           hash[language][:style] = [styles[0]]
#           if language == :javascript
#             hash[language][:style] = languages_by_style.keys
#           end
#         end
#       end
#     end
#   end
#   return hash
# end
