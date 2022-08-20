require 'rails_helper'

describe "Rawg::Errors" do
    it 'should return error code & message' do
        request = Rawg::Request.call('get', 'invalid-endpoint')
        expect(request[:code]).to eq(404)
        expect(request[:status]).to eq('404 Not Found')
    end
end