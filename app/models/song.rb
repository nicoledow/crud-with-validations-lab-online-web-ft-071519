class Song < ApplicationRecord
  include ActiveModel::Validations

    validates :title, presence: true



end
