module Rawg
    class Client
        def self.get_resource(resource = nil, id = nil)
            resource_list = ['platforms',
            'consoles',
            'console_details',
            'games',
            'game_details']

            if resource == nil && id == nil
                puts 'Enter a resource:'
                resource_list.each do |r|
                    puts r
                end
                return
            end

            case resource
            when 'creator_roles'
                Request.call('get', '/creator-roles')
            when 'platforms'
                Request.call('get', '/platforms/lists/parents')
            when 'consoles'
                Request.call('get', '/platforms')
            when 'console_details'
                return 'Please enter console id' if id == nil
                Request.call('get', "/platforms/#{id}")
            when 'games'
                Request.call('get', "/games")            
            when 'game_details'
                return 'Please enter game id' if id == nil
                Request.call('get', "/games/#{id}")
            else
                'Invalid Resource.'
            end
        end

        def self.console_ids
            console_ids = Hash.new
            platforms = Request.call('get', '/platforms')[:data]['results']
            platforms.each do |platform|
                console_ids[platform['name']] = platform['id']
            end
            return console_ids            
        end

        def self.game_id(game_name)
            game_id = nil
            games = Request.call('get', '/games')[:data]['results']
            games.each do |game|
                game_id = game['id'] if game['name'].downcase == game_name.downcase
            end       
            game_id == nil ? 'Invalid game name' : "#{game_name.capitalize}: #{game_id}"
        end

    end
end