json.extract! user, :id, :first_name, :last_name, :email, :cellphone, :role, :cpf, :institution_id, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
