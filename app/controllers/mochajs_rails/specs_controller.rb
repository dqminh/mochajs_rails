module MochajsRails
  class SpecsController < ActionController::Base
    layout false

    def index
      @specs = MochajsRails::Spec.all
    end
  end
end
