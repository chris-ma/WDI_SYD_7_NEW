require "rails_helper"

describe Apartment do 
  describe ".book" do
    it "makes the apartment unavailable" do
      #when 
        apartment = Apartment.new 
        tenant = Tenant.new
        apartment.available = true
      #then
        apartment.book(tenant)

        expect(apartment.available).to eq(false)
    end
  end
end