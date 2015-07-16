get "/home" do
  
  
  
  erb :show
end

get "/:class_name/show" do
  @class_name = params[:class_name].classify.constantize
  
  erb :show
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
    erb: show
  when "show"
    
    
    
  end
end