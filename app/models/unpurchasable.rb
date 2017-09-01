class Unpurchasable < Product

	def available_online?
		false
	end

	def available_in_store?
		false
	end

end
