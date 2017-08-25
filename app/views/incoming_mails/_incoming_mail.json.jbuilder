json.extract! incoming_mail, :id, :title, :description, :created_at, :updated_at
json.url incoming_mail_url(incoming_mail, format: :json)
