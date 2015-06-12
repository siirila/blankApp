class Api::V1::Comment < ActiveRecord::Base
  belongs_to :site
end
