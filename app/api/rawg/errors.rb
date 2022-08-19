module Rawg
    class Errors
        def self.map(code)
            case code
            when 401
                return 'Unauthorized request, please try again!'        
            when 404
                return 'Invalid request'        
            else
                return 'Service unavailable, please try again!'
            end
        end
    end
end