Rails.application.routes.draw do
  mount MochajsRails::Engine => "/spec"
end
