# This is the main user model. The user here will be of two types.
class User < ActiveRecord::Base
	has_one :profile
end
