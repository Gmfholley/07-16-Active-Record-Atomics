get "/home" do
  "menu"
end

get "/:class_name/show" do
  @class_name = params[:class_name].classify.constantize  
  erb :show
end

get "/:class_name/create" do
  @class_name = params[:class_name].classify.constantize  
  @obj = @class_name.new
  erb :create
end


get "/:class_name/submit" do
  @class_name = params["class_name"].classify.constantize
  @obj = @class_name.new(params["my_object"])
  if @obj.save
    @message = "Success!  Here are all the records"
    erb :show
  else
    erb :create
  end
end


get "/:class_name/:action/:x" do
  @class_name = params["class_name"].classify.constantize
  case params["action"]
  when "delete"
    if @class_name.destroy(params["x"].to_i)
      @message = "Successfully deleted."
    else
      @message = "Not able to delete this record."
    end
    erb :show
  when "show"
    @obj = @class_name.find(params["x"].to_i)
    erb :one
  when "update"
    @obj = @class_name.find(params["x"].to_i)
    erb :create
  end
end