class PasswordcreatorController < ApplicationController
    def newpassword(length = params[:size].to_i, options = {})
       chars = []
       chars += ("a".."z").to_a 
       chars += ("A".."Z").to_a 
       chars += ("0".."9").to_a 
       chars += %w(! @ # $ % ^ & \( \) { } [ ] - _ < > ?) 
     

    @message =(1..length).collect{chars[rand(chars.size)]}.join
  end
end
    