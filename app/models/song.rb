class Song < ApplicationRecord
  include ActiveModel::Validations

    validates :title, presence: true


    validates_with MyValidator

end
