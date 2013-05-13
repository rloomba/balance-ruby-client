require 'balanced'
Balanced.configure('3bfbbc04b76711e282ba026ba7cd33d0')

card = Balanced::Card.new(
  :uri => '/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/cards',
:card_number => '5105105105105100',:expiration_month => '12',:expiration_year => '2020',:security_code => '123',
).save