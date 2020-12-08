ActiveAdmin.register User do
  index do 
    column :name 
    column :email 
  end

  filter :email, as: :select

form do |f|
  input :email 
  input :name
  actions
end

form do |f|
  inputs 'New User' do 
    input :email 
    input :name
    input :password
  end
  actions
end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :admin, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :name, :email, :password
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :admin, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
