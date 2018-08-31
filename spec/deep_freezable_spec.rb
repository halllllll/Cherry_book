require "DF/team"
require "DF/bank"

RSpec.describe "feeze immutable architecture" do
    subject(:arr){["Japan", "US", "India"]}
    it "for array, itself and all elements are freezed." do
        expect(arr).to eq Team::COUNTRIES
    end
end