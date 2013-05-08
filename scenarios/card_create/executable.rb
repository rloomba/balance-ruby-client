require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')

card = Balanced::Card.new(
  :uri => '/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/cards',
:card_number => '5105105105105100',:expiration_month => '12',:expiration_year => '2020',:security_code => '123',
).save