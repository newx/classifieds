module Classifieds
  class Section < ActiveRecord::Base
    has_many :categories
  end
end
