class CharactersController < ApplicationController

	def index
		@characters = Character.all 
	end 

	def new 
		@character = Character.new
	end 

	def show 
		@character = Character.find(params[:id])
	end

	def edit 
		@character = Character.find(params[:id])
	end 

	def create 
		@character = Character.create(char_params)
		if !@character.errors.empty?
			render :new
		else
			redirect_to character_path(@character)
		end
	end 

	def update 
		@character = Character.find(params[:id])
		@character.update(char_params)
		if !@character.errors.empty?
			render :edit
		else
			redirect_to character_path(@character)
		end 
	end 

	def destroy
		@character = Character.find(params[:id])
		@character.destroy
		redirect_to characters_path
	end 

	private 

	def char_params
		params.require(:character).permit!
	end 
end
