# class MyValidator < ActiveModel::Validator

#     #if a song with the same title and same year exists --> error message
#     #if released = true and released_year == nil --> error message
#     #if release_year > current_year --> error message
#     #otherwise, error message << false
#     def validate(record)
#       if Song.all.detect {|song| song.title == record.title} && Song.all.detect {|song| song.release_year == record.release_year}
#         record.errors[:title] << 'A song with this title for this year already exists'
#       end

#       if record.released == true && record.release_year == nil
#         record.errors[:release_year] << 'Must include release year'
#       end

#       if record.release_year > Time.now.year
#         record.errors[:release_year] << 'Release year cannot be in the future'
#       end

#       if record.errors[:title].empty? && record.errors[:release_year].empty?
#         record.errors[:title] << false
#         record.errors[:release_year] << false
#       end
#     end
# end
