FactoryGirl.define do 

  factory :apartment do
    sequence(:title) { |n| "Spacious #{n} bedroom apartment with a grand view"}
    sequence(:bedrooms){ |n| n } 
    price_in_cents 1_500_000
    location "Bondi, NSW"
    description "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam rerum temporibus mollitia, expedita aliquid iusto, minus, quo quod doloribus ab, ea autem voluptatum aperiam praesentium. Minus iusto alias doloremque consequuntur."
    available true

  end  
end