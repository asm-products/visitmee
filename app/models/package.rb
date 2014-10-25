# Modelling tour packages.
class Package < ActiveRecord::Base
	belongs_to: user
end
