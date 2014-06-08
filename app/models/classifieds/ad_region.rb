module Classifieds
  class AdRegion < ActiveRecord::Base
    begons_to :ad
    begons_to :city
    begons_to :country
  end
end
