# The package model controller. Mainly the crud actions.
class PackageController < ApplicationController
	
	# Show the package details.
	def show
		@package=Package.all()
	end

	# Show a form page where travellers can post what they need.
	def new
	end

	# Create that package if all the requirements are fully satisfied for saving the record to database.
	def create
	end

	# Update the package details.
	def update
	end

	# Delete the package url. We can display a nice page before deleting a item. And we can show some like why don't you try this people or may be like something facebook have before they deactivate their account. 
	def delete
	end

	# So finally if the traveller really want to delete the package invoke the action.
	def destroy
	end
end
