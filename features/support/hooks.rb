Before('@user') do
  @user = FactoryGirl.create(:user)
end

Before('@offer') do
  @offer = FactoryGirl.create :offer
end