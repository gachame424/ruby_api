require "gnavis_model.rb"
class GnavisController < ApplicationController
    def index
        render json: GnavisModel.new.get_shopinfo
    end
end
