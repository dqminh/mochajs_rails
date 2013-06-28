module MochajsRails
  class SpecsController < ActionController::Base
    layout false

    def index
      @specs = MochajsRails::Spec.find(params[:path] || "")
    end
  end
end
