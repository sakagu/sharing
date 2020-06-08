json.array!(@orders) do |order|
  if current_user.id == order.user_id 
  json.id order.id
  json.delivery_date order.delivery_date
  json.site_name order.site_name
  json.delively_place order.delively_place
  json.company order.user.company
  json.authority order.user.authority
  elsif current_user.authority == 1
    json.id order.id
    json.delivery_date order.delivery_date
    json.site_name order.site_name
    json.delively_place order.delively_place
    json.company order.user.company
    json.authority order.user.authority
  end
end