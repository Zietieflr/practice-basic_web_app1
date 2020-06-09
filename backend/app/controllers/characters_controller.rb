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
    character = Character.new(
      name: params[:name]
      book_id: params[:book_id]
    )
end
