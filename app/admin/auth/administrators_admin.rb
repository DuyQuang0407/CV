Trestle.resource(:administrators, model: Administrator, scope: Auth) do
  menu do
    group :configuration, priority: :last do
      item :administrators, icon: "fas fa-users"
    end
  end

  table do
    column :avatar, header: false do |administrator|
      avatar_for(administrator)
    end
    column :email, link: true
    column :first_name
    column :last_name
    actions do |a|
      a.delete unless a.instance == current_user
    end
  end

  form dialog:true do |administrator|
    text_field :email, placeholder: "Email"

    row do
      col(sm: 6) { text_field :first_name, placeholder: "First name" }
      col(sm: 6) { text_field :last_name, placeholder: "Last name" }
    end

    row do
      col(sm: 6) { password_field :password, placeholder: "Password" }
      col(sm: 6) { password_field :password_confirmation, placeholder: "Confirm password" }
    end
  end
end
