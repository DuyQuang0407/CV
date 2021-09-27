Trestle.resource(:educations) do
  menu do
    item :educations, icon: "fa fa-graduation-cap"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :name
    column :location
    column :start_year
    column :end_year
    column :description
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form dialog:true do |education|
    text_field :name, placeholder: "Experience name"
    text_field :location, placeholder: "The school. Ex: from ..."
    text_field :start_year, placeholder: "Start year"
    text_field :end_year, placeholder: "End year"
    row do
      text_area :description, class:'text_area', placeholder: "Describe the experience learned" 
    end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:education).permit(:name, ...)
  # end
end
