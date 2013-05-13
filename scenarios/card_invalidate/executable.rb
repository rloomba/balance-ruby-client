require 'balanced'
Balanced.configure('3bfbbc04b76711e282ba026ba7cd33d0')

card = Balanced::Card.find('/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/cards/CC3eP01b8CHWFHR6ZvaWQll5')
card.invalidate