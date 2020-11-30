class PasswordcreatorController < ApplicationController
    def newpassword(length = params[:size].to_i, options = {})  # import value capture in view of password length
       chars = []                                               #create array
       chars += ("a".."z").to_a                                 #add element to arraw
       chars += ("A".."Z").to_a 
       chars += ("0".."9").to_a 
       chars += %w(! @ # $ % ^ & \( \) { } [ ] - _ < > ?) 

    @message =(1..length).collect{chars[rand(chars.size)]}.join # create an instance vairable containing string output of random 
                                                                #selection of characters from char array containing same amount of characters as password length
  end
end
    