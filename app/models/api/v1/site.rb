class Api::V1::Site < ActiveRecord::Base
	validates	:url, 	:presence => true
	has_many	:comments
end
