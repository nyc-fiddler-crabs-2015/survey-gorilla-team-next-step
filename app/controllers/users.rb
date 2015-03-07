get '/users/:id' do
  if session[:user_id] == params[:id] # might cause error because of string vs integer type
    @user = User.find(params[:id])
    erb :'users/show'
  else
    redirect '/'
  end
end