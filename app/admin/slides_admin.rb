Trestle.resource(:slides) do
  menu do
    item :slides, icon: "fa fa-slideshare"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :link_img
    column :width
    column :height
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form dialog:true do |slide|
    text_field :link_img, placeholder: "Link of image"
    text_field :width, placeholder: "Width of image"
    text_field :height, placeholder: "Height of image"
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:slide).permit(:name, ...)
  # end
end
