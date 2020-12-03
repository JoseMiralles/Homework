class SillyController < ApplicationController

    def fun
        # Params is a hash that contains:
        # 1. Query string
        # 2. Request body
        # 3. URL Params/route params (wildcards)

        # Example request: /silly?message=hi&message2=hi_again

        # render json: params[:message]
        # Response -> hi

        render json: params
        # Response -> {"message":"hi","message2":"hi_again","controller":"silly","action":"fun"}
    end

    def time
        render json: params
    end

    def super
        redner json: params
    end

end