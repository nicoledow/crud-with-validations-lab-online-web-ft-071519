class Song < ApplicationRecord
  include ActiveModel::Validations

    validates :title, presence: true
    validate :release_year_required_if_released, :release_year_cannot_be_in_future, :cannot_have_identical_titles_in_same_year
    
    def release_year_required_if_released
      if self.released == true && release_year == nil
        errors.add(:release_year, "release year required if song has been released")
      end
    end

    def release_year_cannot_be_in_future
      if release_year && release_year > Time.new.year
        errors.add(:release_year, "release year cannot be in the future")
      end
    end

    def cannot_have_identical_titles_in_same_year
      song = Song.all.detect {|s| s.title == self.title}

      if song && song.release_year == self.release_year
        errors.add(:release_year, "cannot have an identical title in the same year")
      end
    end
  

end
