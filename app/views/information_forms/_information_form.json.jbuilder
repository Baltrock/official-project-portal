json.extract! informationform, :id, :first_name, :last_name, :age, :nationality, :country, :city, :phone_number, :introduction, :bio, :social_media, :created_at, :updated_at
json.url informationform_url(informationform, format: :json)
