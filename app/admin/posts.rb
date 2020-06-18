ActiveAdmin.register Post do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :title, :description, :body, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    column :id do |post|
      link_to post.id, akka_admin_7_post_path(post)
    end
    column :title
    column :description
    column :created_at
    column :updated_at
    actions
  end
  
  show do 
    panel "Post Details" do
      attributes_table_for post do
        row :title
        row :description
        row (:body) { |post| raw(post.body) }
        row :created_at
        row :updated_at
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :body, as: :quill_editor, input_html: {data: {options: {modules: {toolbar: [['bold', 'italic', 'underline', 'strike'], ['blockquote', 'code-block'], [{ 'header': 1 }, { 'header': 2 }], [{ 'list': 'ordered'}, { 'list': 'bullet' }], [{ 'script': 'sub'}, { 'script': 'super' }], [{ 'indent': '-1'}, { 'indent': '+1' }], [{ 'direction': 'rtl' }], [{ 'header': [1, 2, 3, 4, 5, 6, false] }], [{ 'color': [] }, { 'background': [] }], [{ 'font': [] }], [{ 'align': [] }], ['formula'], ['image'], ['video'], ['clean']] }, theme: 'snow'}}}
    end

    f.button :Post

  end

end


