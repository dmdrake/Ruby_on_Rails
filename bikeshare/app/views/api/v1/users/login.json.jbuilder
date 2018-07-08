json.user do
  json.id @user.id
  json.username @user.username
  json.single_access_token @user.single_access_token
end
