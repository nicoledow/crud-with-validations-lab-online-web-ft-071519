class Song < ApplicationRecord
    validates :title, presence: true


    validates_with MyValidator
end
