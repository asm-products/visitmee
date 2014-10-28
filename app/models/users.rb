class Users < ActiveRecord::Base
	has_one :profile
	has_many :packages
end
