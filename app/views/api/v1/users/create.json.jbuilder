json.data do
  json.user do
    json.call(
      @user,
      :id,
      :name,
      :email,
      :uid,
    )
  end
end
