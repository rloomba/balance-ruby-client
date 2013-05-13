require 'balanced'
Balanced.configure('3bfbbc04b76711e282ba026ba7cd33d0')

account = Balanced::Marketplace.my_marketplace.create_account
