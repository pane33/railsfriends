json.extract! t_amici, :id, :nome, :cognome, :email, :telefono, :instagram, :created_at, :updated_at
json.url t_amici_url(t_amici, format: :json)
