require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')


buyer = Balanced::Marketplace.my_marketplace.create_buyer(
  :card_uri => '/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/cards/CC3Z9QjXxmMgylI5gqSDa3z9',)
