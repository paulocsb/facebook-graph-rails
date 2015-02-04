class ApiController < ApplicationController
	def index
	end

	def search
		data = Api.koala
		@keyword = params[:keyword]
		@graph = data.select { |h| h['description'].to_s.downcase.include?(@keyword.downcase) && !@keyword.to_s.empty? }
	end
end