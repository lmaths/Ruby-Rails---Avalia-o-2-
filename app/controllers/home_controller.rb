class HomeController < ApplicationController
  def index
    @consulta = Personagem.all
  end
end
