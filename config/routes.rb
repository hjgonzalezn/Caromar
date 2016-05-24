Rails.application.routes.draw do
  root 'entidad#index'
  get 'entidad/index' => 'entidad#index', as: :index
  get 'entidad/somos' => 'entidad#somos', as: :somos
  get 'entidad/avistamiento' => 'entidad#avistamiento', as: :avistamiento
  get 'entidad/vacaciones' => 'entidad#vacaciones', as: :vacaciones
  post 'entidad/enviar_reserva' => 'entidad#enviar_reserva', as: :enviar_reserva
  post 'entidad/enviar_solicitud_contacto' => 'entidad#enviar_solicitud_contacto', as: :solicitud_contacto
  get 'entidad/reservas' => 'entidad#reservas', as: :reservas
  
  get 'entidad/galerias' => 'entidad#galerias', as: :galerias
  get 'entidad/contactenos' => 'entidad#contactenos', as: :contactenos
  get 'entidad/terminos' => 'entidad#terminos', as: :terminos
  get 'entidad/bahiasolano' => 'entidad#bahiasolano', as: :bahia
  get 'entidad/hotel' => 'entidad#hotel', as: :hotel

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

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
