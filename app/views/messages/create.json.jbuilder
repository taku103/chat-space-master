json.text @message.text
json.user_name @message.user.name
json.created_at @message.created_at.to_s
json.image @message.image_url
json.id @message.id