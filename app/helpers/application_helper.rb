module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
      link_to 'Logout', destroy_user_session_path, method: :delete
    else
      link_to 'Register', new_user_registration_path
      link_to 'Login', new_user_session_path
    end
  end

  def source_helper
    greeting = "Welcome. Thanks for visiting us from #{session[:referrer]}"
    content_tag(:h3, greeting, class: 'source-greeting') if session[:referrer]
  end
end
