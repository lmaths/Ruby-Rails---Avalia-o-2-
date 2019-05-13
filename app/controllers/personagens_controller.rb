class PersonagensController < ApplicationController

  def new
    @personagem = Personagem.new
  end

  def create
    @personagem = Personagem.new(personagem_params)

    if @personagem.save
      redirect_to @personagem,
                  notice: "Personagem criado com sucesso"
        else
          render action: :new
        end


  end

  def personagem_params

    params.require(:personagem).permit(:nome, :forca, :resistencia, :agilidade, :destreza)
  end


  def show
    @personagem = Personagem.find(params[:id])

  end


end
