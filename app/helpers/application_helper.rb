# Methods to use in all model views. This is application controller.
module ApplicationHelper

	# Shows the IP of visitor.
	def return_ip
		return @ip=request.remote_ip
	end


end
