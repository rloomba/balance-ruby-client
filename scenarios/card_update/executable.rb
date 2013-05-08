require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')

card = Balanced::Card.find('/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/cards/CC3eP01b8CHWFHR6ZvaWQll5')
card.meta = {
:facebook.user_id => '0192837465',:my-own-customer-id => '12345',:twitter.id => '1234987650',
}
card.save