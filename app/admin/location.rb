ActiveAdmin.register Location do

	permit_params :city, :state, :latitude, :longitude, :nearest_meteorite1, :nacho1, :nearest_meteorite2, :nacho2, :nearest_meteorite3, :nacho3

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
