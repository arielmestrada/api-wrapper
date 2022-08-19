module Api
    class ApisController < ApplicationController
        
        def creator_roles
            creator_roles = Rawg::Client.get_resource("creator_roles")
            render json: creator_roles
        end

        def platforms
            platforms = Rawg::Client.get_resource("platforms")
            render json: platforms
        end

        def consoles
            consoles = Rawg::Client.get_resource("consoles")
            render json: consoles
        end

    end
end