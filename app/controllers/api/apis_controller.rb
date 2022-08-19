module Api
    class ApisController < ApplicationController        

        def platforms
            platforms = Rawg::Client.get_resource("platforms")
            render json: platforms
        end

        def consoles
            consoles = Rawg::Client.get_resource("consoles")
            render json: consoles
        end

        def console_details
            console = Rawg::Client.get_resource("console_details", 1)
            render json: console
        end

        def games
            games = Rawg::Client.get_resource("games")
            render json: games
        end

        def game_details
            game = Rawg::Client.get_resource("game_details", 1)
            render json: game
        end

    end
end