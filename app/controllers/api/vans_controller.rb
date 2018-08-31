class Api::VansController < ApplicationController

  def index
    @vans = Van.all
    render 'index.json.jbuilder'
  end

  def create
    @van = Van.new(
                    make: params[:make],
                    model: params[:model], 
                    year: params[:year], 
                    color: params[:color], 
                    price: params[:price] 
                    )

    @van.save
    render 'show.json.jbuilder'
  end 

  def show
    @van = Van.find(params[:id])
    render 'show.json.jbuilder'
  end 

  def update
    @van = Van.find(params[:id])

    @van.id = params[:id] || @van.id
    @van.make = params[:make] || @van.make
    @van.model = params[:model] || @van.model
    @van.year = params[:year] || @van.year
    @van.color = params[:color] || @van.color
    @van.price = params[:price] || @van.price

    @van.save
    render 'show.json.jbuilder'
  end 

  def destroy
    @van = Van.find(params[:id])
    @van.destroy

    render json: {message: "Van successfully destroyed."}
  end 

end
