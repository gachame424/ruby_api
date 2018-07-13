class SamplesController < ApplicationController
    def index
        render json:{ sample:[{id:1, country:'フランス'},{id:2, country:'Japan'}] }
    end
end
