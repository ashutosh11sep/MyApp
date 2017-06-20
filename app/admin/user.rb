ActiveAdmin.register User do


  permit_params :email,  :first_name, :last_name, :company_id, :role_id, :start_date, :end_date, :monthly_charge, :notes, :image_id, :active

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end