module Classifieds
  class Ad < ActiveRecord::Base
    belongs_to :category
    has_many :ad_regions

    validates_presence_of :title, :short_desc

    before_create do
      self.start_date = Time.now if self.start_date.nil?
    end

    before_save do
      self.slug = self.title.to_slug
    end

  end
end
