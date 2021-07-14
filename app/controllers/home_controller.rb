class HomeController < ApplicationController

	def trash
		@trash = List.where(:completed => true).destroy_all
		redirect_to lists_url, notice: "Itens concluidos foram deletados com sucesso."
	end

	def delete
		@delete = List.all.destroy_all
		redirect_to lists_url, notice: "Todos os itens foram deletados com sucesso"


	end

end
