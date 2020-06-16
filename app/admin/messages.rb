ActiveAdmin.register Message do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :subject, :body
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :subject, :body]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  index do
    selectable_column
    column :id do |message|
      link_to message.id, akka_admin_7_messages_path(message)
    end
    column :email
    column :subject
    column :created_at
    column :updated_at
    actions
  end

end
