require 'balanced'
Balanced.configure('3bfbbc04b76711e282ba026ba7cd33d0')

marketplace = Balanced::Marketplace.my_marketplace

Balanced::Credit.all(:limit => 2)