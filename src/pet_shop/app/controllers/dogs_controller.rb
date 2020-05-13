class DogsController < ApplicationController
   before_action :authenticate_user!

def home

end 

def index
    @dogs = Dog.all
    

end

def new 


end 

def create

end

def show

end 

end 