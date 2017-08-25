json.extract! outgoing_mail, :id, :title, :description, :created_at, :updated_at
json.url outgoing_mail_url(outgoing_mail, format: :json)
