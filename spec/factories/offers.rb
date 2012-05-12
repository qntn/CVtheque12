FactoryGirl.define do
  factory :offer do
    sequence(:title) {|n| "offre#{n}" }
    description 'Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Maecenas sed diam eget risus
                  varius blandit sit amet non magna. Aenean lacinia bibendum nulla sed consectetur. Lorem ipsum dolor
                  sit amet, consectetur adipiscing elit. Integer posuere erat a ante venenatis dapibus posuere velit
                  aliquet. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'
  end
end