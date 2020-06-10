class CharactersController < ApplicationController
  def index
    characters = Character.all
    render json: characters, include: [:book]
  end

  def show
    character = Character.find(params[:id])
    render json: character, include: [:book]
  end

  def create
    Character.create(
      name: params[:name],
      book_id: params[:book_id]
    )
    redirect_to "http://localhost:3001/book.html?id=#{params[:book_id]}"
  end
end
