require 'rails_helper'

describe "Rawg::Client" do
    it 'should return code|status = 200|Success if resource is passed' do
        request = Rawg::Client.get_resource('platforms')
        expect(request[:code]).to eq(200)
        expect(request[:status]).to eq("Success")
    end

    it 'should return list of resource as array if no arguments passed' do
        arr = Rawg::Client.get_resource
        expect(arr.empty?).to eq(false)
    end

    it 'should returns the id of the entere game name or if it is not existing' do
        game = Rawg::Client.game_id('team fortress 2')
        invalid_game = Rawg::Client.game_id('invalid game name')
        expect(game).to eq("Team fortress 2: 11859")
        expect(invalid_game).to eq("Invalid game name")
    end
end