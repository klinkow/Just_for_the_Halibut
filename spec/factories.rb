FactoryGirl.define do
  factory(:product) do
    name('Swordfish')
    description('A fish from the sea')
    price('15.25')
  end

  factory(:user) do
    email('nobody@somewhere.com')
    admin('true')
  end
end
