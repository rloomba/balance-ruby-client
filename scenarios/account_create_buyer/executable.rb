require 'balanced'
Balanced.configure('3bfbbc04b76711e282ba026ba7cd33d0')


buyer = Balanced::Marketplace.my_marketplace.create_buyer(
  :card_uri => '/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/cards/CC3Z9QjXxmMgylI5gqSDa3z9',)
