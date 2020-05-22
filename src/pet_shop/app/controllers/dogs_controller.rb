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
    @dog = current_user.dogs.create(dog_params)
    if 
    @dog.errors.any?
    render "new"
    else 
        redirect_to dogs_path
    end
end 


def show
    @dog = Dog.find(params[:id])
end 


def edit
    @dog = Dog.find_by_id(params[:id])
    if 
    @dog 
    render ("edit")
    else 
    redirect_to dogs_path
    end
end 

def update 
    @dog = Dog.find_by_id(params[:id])
    if 
    @dog
    @dog.update(dog_params)
    if 
    @dog.errors.any?
    render "edit"
    else 
        redirect_to dogs_path
 end 
    else 
    redirect_to dogs_path
end
end 


def destroy 
    @dog = Dog.find_by_id(params[:id])
    if 
    @dog
    @dog.destroy
    redirect_to dogs_path
    end
end 

def whoweare

end 

def contactus

end


def thankyou


end


def account


end



def aboutus 

end 

private 
def dog_params

    params.require(:dog).permit(:title, :description, :breed, :age, :picture, :name)

end 

end 

