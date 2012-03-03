class Users::SessionsController < Devise::SessionsController
	def new
		if User.count == 0
			redirect_to new_user_registration_path
		else
			resource = build_resource
			clean_up_passwords(resource)
			respond_with(resource, serialize_options(resource))
		end
	end

	 # POST /resource/sign_in
	def create
		resource = warden.authenticate!(auth_options)
		set_flash_message(:notice, :signed_in) if is_navigational_format?
		sign_in(resource_name, resource)
		respond_with resource, :location => admin_path
	end
end
