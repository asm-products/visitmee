module SiteHelper
	def return_title()
		if(@title)
			@title+="-"
		else
			return(self)
		end
	end
end
