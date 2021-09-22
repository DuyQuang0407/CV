Trestle.resource(:socials) do
  menu do
    item :socials, icon: "fa fa-address-book"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :id
    column :title
    column :href
    column :icon
    column :created_at, align: :center
    column :updated_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form dialog:true do |social|
    text_field :title, placeholder: "The title of the social. ex: Facebook,..." 
    text_field :href, placeholder: "The link of the social. ex: abc.com,..."
    text_field :icon, placeholder: "The icon of social. search at https://fontawesome.com/"
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:social).permit(:name, ...)
  # end
end