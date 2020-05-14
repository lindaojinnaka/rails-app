class DogsController < ApplicationController
   before_action :authenticate_user!

def home

end 

def index
    @dogs = Dog.all
    

end

def new 
    @dog = Dog.new   
end 

def create
    p "************"
    p params 
    p "************"
    current_user.dogs.create(dog_params)
    redirect_dogs_path
end

def show

end 

private 
def dog_params
    params.require(:dog).permit(:title, :description, :breed, :age, :state, :city, :potty_trained, :likes_dogs, :likes_children, :picture, :name)
end 

end 

