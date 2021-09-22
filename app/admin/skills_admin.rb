Trestle.resource(:skills) do
  menu do
    item :skills, icon: "fa fa-pencil"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :name
    column :percent
    column :bg_color
    column :created_at, align: :center
    column :updated_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form dialog:true do |skill|
    text_field :name, placeholder: "Skill name"
    text_field :percent, placeholder: "Skill percent"
    text_field :bg_color, placeholder: "Skill back ground color"
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:skill).permit(:name, ...)
  # end
end
