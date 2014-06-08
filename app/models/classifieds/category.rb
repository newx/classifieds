module Classifieds
  class Category < ActiveRecord::Base
    belongs_to :section
    has_many :ads
  end
end
