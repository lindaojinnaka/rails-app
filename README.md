# Pet Shop Marketplace  #
Github: https://github.com/lindaojinnaka/pet_shop.git
<br>
Website: https:://https://enigmatic-castle-68608.herokuapp.com/

## Introduction 
Identify the problem you’re trying to solve by building this particular marketplace App?

The problems I am attempting to solve all relate to homeless dogs and the overpopulation of dogs in shelters throughout NSW. Dogs who have been abandoned by their owners or have been forfeited to shelters due to abuse or negligence are often placed in shelters in order to reduce the number of dogs living in the streets. 

In NSW, as in most states throughout the country, there are two types of shelters- kill and no-kill shelters. No kill shelters are smaller shelters that house and feed homeless animals for an indefinite period of time until they are able to be adopted. Unfortunately, kill shelters are quite the opposite. Homeless dogs and cats are given a set time frame in which they must be adopted or else the animal will be euthanized. Animals in kill shelters are euthanized solely to make room for incoming homeless animals because it would be difficult to feed, house, and care for every single homeless dog that is brought to the shelter. 

The only way to prevent these euthanizations would be to find a home for these animals, and that is what my app is trying to solve. The premise of the app is to allow shelters to place listings of dogs in their shelter so that they are able to reach a wider scale of potential “buyers”. By doing this, there is a higher possibility that a dog will be seen and rescued, which saves the life of the dog and instead provides him or her with a loving home. 
<br>

Every year, millions of animals are abandoned in in animal shelters or euthanized, while pet buyers flock to online and storefront pet shops in the hopes of adding a pet to their family.  My app is attempting to match potential buyers with dogs in shelters that are at risk of being eauthanized and who are very much need if a loving home  
<br>


Also, the app is attempting to solve the problem of puppy mills. Essentially puppy mills are breeding facilities that breed “designer” cats and dogs for profit. Unfortunately, the conditions at puppy millis are unsafe and unhealthy. Animals are crammed into small spaces and sold at a high-ticket price to unaware buyers. If potential buyers used the application to acquire pets, this would curb the demand for dogs in puppy mills and hopefully discourage the practice.  

## Purpose
The purpose of pet shop marketplace is to connect NSW animal shelters with potential homes i.e users. The shelters place dog profiles with information containing characteristics of dogs in need of adoption along with their pictures. On the other end, users are able to view all of the profiles of the dogs to chose which one they would like to adopt. The user then has the option of going to the shelter of the listed dog in order to begin adoption procedures. 

## Site Map
![Sitemap](docs/app-images/Sitemap.png)

## Functiionality/Features
Basic Features 
Users can sign up for an account to view available listings.
Users can view available pet listings at shelters. 
Users can create create an acount of a listing for a dog.
Users can update and delete their account. 
Users can have their email and passwords stored in the database. 




## Target Audience 
The target audience of the application are animal shelters with dogs and users who are looking to adopt a dog from an animal shelter or are just curious to see what dog breeds are available.  

## Tech Stack
Below are the set of technologies used to create pet shop Marketplace <br>
*Ruby 
<br>
*Ruby on Rails 
<br>
*HTML
<br>
*CSS
<br>
*Devise 
<br>
*Heroku
<br>
*Amazon S3



## User Stories 
1.As a user and curious pet buyer, I would like an application that allows me have a wide range of options when selected a dog. I am unsure of what type of dog I want but I do know I want a dog that is playful, young, and not a bully breed.

Implication: Profiles list characteristics of dogs so buyers can choose what dog fits their lifestyle. 

2.I would like to get a feel for how this dog interacts with children, as I have a 2 year old daughter and want no issues to arise. I do not want to travel far from my home in NSW so the dog must be in a shelter that is close to me or NSW based.

Implication: The age of the dogs are listed in each profile. 

3.As a user, I also want to ensure my email and password I create on the website is secure.

Implication: Devise is used to encrypt and decrypt user log in information. 


## Describe the way tasks are tracked and planned: 
The main focus at the beginning of the project was to make sure the MVP was completed before precedig to the visuals and added funvtionalities of the app. First, i made sure all of teh routes, controllers, and views were created and linked together. Next, I seeded my database and begin to edit information to appropriately match my application. Finally, I began to work on visuals then completed my README. 


## High level components of the application  of the application  
The components of the application are the model, the controller, view, routes, and database. 
<br> 
The controller is essentially the "brains" of the application and holds all of the methods necessary to create the functiionality of displaying all listings, editing listing, updating listing, and deleting listings. The controller is also responsible for connecting the model and view together. All logic is implemented into the view. 
<br>
The view does not contain the logic, but rather the visuals of the method. Each route created is rendered by a view and all information and logic created in the controller and the view is rendered onto the screen and accessed by the user. 
<br>
The database is accessed through the model which has several helper methods that allows users to perform the CRUD operations (create, read, update, destroy).
<br>
The database contains all of the data from the application and can is able to store, manage, and update all of the information pertaining to the app. 



## The database structure
My application has four entities which are the users, the dog, the dog traits, and the traits. A dog has thirteen fields which are: id, user_id, title, description, breed, age, potty trained, likes_dogs, likes children, state, city, sex, and name. Additionally, the foreign key “user_id” also resides in the dog entity. The dog entity is connected to the dog_traits entity and has the possibility of having zero or many traits. In addition to this, the dog is connected to a “user” entity and can only have one user. The dog traits table is connects to a sole entity, which is the dog_traits. The users entity is tied to the dog enity and can have zero or many of that entity (dogs). 


## Third-party Services Pet Shop-marketplace uses 
The third party services used in my app were all implemented through the installation of various gems. 
<br>
 
Devise was one of the most essential high level components/gems that was installed in my app.  Devise itself has several classes, models, routes, helper methods, and an array of functionalities which are geared towards creating new users, authenticating users, verifying whether or not user are signed in or out, and user sessions. Devise also safely handles any sensitive user information such as their email address and password. Specifically, passwords are safely encrypted and decrypted by the app so that no one, including myself, can access the actual physical password of users.  
<br>

Another high level component I used was the Faker gem. The faker gem was added to generate fake data to my database, which was then used to create the profiles stored in my Dog model. Data such as “dog names”, their age, city and state were used to seed my database and helped jump start the process of creating and detailing profiles for each dog displayed. 
<br>

AWS was used in my application store all images uploaded from each user. Users can upload an image and the image is sent to the user I created (SR-rails ) in AWS and the image would be stored in a bucket named pet-shop 44. This component is beneficial because enables several users to upload images to my application without sacrificing the load speed. AWS is also beneficial because it offers endless storage that allows hundreds of images to upload to my application.
<br>

The last high-level abstraction utilized in my app was Bulma. Bulma  is an open source CSS framework used to create responsive and visually appealing pages. I used Bulma templates on each page of my application to create dynamic pages containing pre generated elements such as banners, forms and columns. Additionally, I modified pages appropriately so that style, colors, and text were cohesive across each page. 


 ##  Describe your project’s models in terms of the relationships (active record associations) they have with each other. 
The two relationships in my application are between the user and the dog. The dog belongs to the user and the user has many dogs. The foreign key is the user_id  which exists in the dog table. The user id connects the dog created to the user that created the app. This allows the user edit/update/delete functionality throughout the application.  
 
##  Describe your project’s models in terms of the relationships (active record associations) they have with each other. 
Discuss the database relations to be implemented. 
My application has four entities which are the users, the dog, the dog traits, and the traits. A dog has thirteen fields which are: id, user_id, title, description, breed, age, potty trained, likes_dogs, likes children, state, city, sex, and name. Additionally, the foreign key “user_id” also resides in the dog entity. The dog entity is connected to the dog_traits entity and has the possibility of having zero or many traits. In addition to this, the dog is connected to a “user” entity and can only have one user. The dog traits table is connects to a sole entity, which is the dog_traits. The users entity is tied to the dog enity and can have zero or many of that entity (dogs). 

## Wireframes (detailed ERD and wireframes w/mobile versions)
 Images labeled Screenshots are Desktop Wireframes Screenshots, Trello Screenshots and ERD screenshots. Would not upload underneath

 

 

