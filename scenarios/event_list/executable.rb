require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')

marketplace = Balanced::Marketplace.my_marketplace
events = Balanced::Event.all(:limit => 2)