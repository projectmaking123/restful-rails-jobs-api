json.data do
  json.user do
    json.call(
      @user,
      :id,
      :email,
      :uid
    )
  end
end
