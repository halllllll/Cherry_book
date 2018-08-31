require "DF/team"
require "DF/bank"

RSpec.describe "feeze immutable architecture" do
    subject(:arr){["Japan", "US", "India"]}
    subject(:table){{"Japan"=>"yen", "US"=>"doller", "India"=>"rupee"}}
    it "for array, itself and all elements are freezed." do
        expect(arr).to eq Team::COUNTRIES
        expect(Team::COUNTRIES.frozen?). to be true
        expect(Team::COUNTRIES.all?{|country| country.frozen?}).to be true
    end
    it "for hash, all key and value, and, hash itself are freesed" do
        expect(table).to eq Bank::CURRENCIES
        expect(Bank::CURRENCIES.frozen?).to be true
        expect(Bank::CURRENCIES.all?{|k, v| k.frozen? && v.frozen?}).to be true
    end
end