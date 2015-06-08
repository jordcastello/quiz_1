#Routes just defined rules for out application. So if a request matches the
#HTTP verb and URL patteren it will invoke the associated controller
#

Rails.application.routes.draw do
  #
  # #this will match  GET request to "/hello"
  # #then it will involke the WelcomeController with hello action
  # #VERB "URL" =>"CONTROLLER_NAME#ACTION"
  #
  # #get "/hello" => "welcome#hello"
  #
  # #this will match any url that has /hello/ANYTHING to WelcomeController
  # #hello action. Rails will also add a key value to the params Hash from
  # #the URL. For instance if I go to: /hello/tam the params Hash will look like:
  # #{"name" => "tam"}
  # #The as: option defines the PATH/URL helper for this route. Sometimes Rails
  # #does't automatically assign the PATH/URL helper if there is a parameter
  # #in the URL
  # get "/supporter/:name" => "supporter#index", as: "supporter_index"
  #
  # #this makes it that when we visit the home page of our application. It will
  # #invoke the welcome_controller with index action (method) inside it
  # #notice the class is WeclomeController but I only had to put
  # #in here as "controller" part is implied

  get "/supporter" => "supporter#index"


  post "/supporter" => "supporter#create"


  # this will match a GET request with URL "/questions/new"
  # to the questions controller with new action
  # The "as" option gives us a conventient method that we can use in the views
  # to generate this path or url. So in my view files I can do:
  # new_question_path or new_question_url

  # get "/supporters/new" => "supporters#new", as: :new_support
  #
  # # this will match a POST request with url "/questions"
  # # to the questions controller with create action
  #
  # post "/suppoters" => "supporters#create", as: :supperters

  # this will match any GET request wwith "/question/something"
  # the "something" could be anything. In this case we expect it
  # to be an id of the question. We will get this id in our controller
  # as part of the params object.
  # the as: :question option enables us to have a helper method like:
  # question_path or question_url
  get "/supporters/:id" => "supporters#show", as: :support

  get "/supporters" => "supporters#index"

  get "/supporters/:id/edit" => "supporters#edit", as: :edit_support

  patch "/supporters/:id" => "supporters#update"


  delete "/supporters/:id" => "supporters#destroy"

  root "supporter#index"
  #get is a method that takes it a single argument which is a hash. So the
  #explicit format for it is:
  #get({"/contact" => "contact#index""})



  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
