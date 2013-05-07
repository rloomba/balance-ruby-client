require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')


buyer = Balanced::Marketplace.my_marketplace.create_buyer(
  :key1 => 'value1',:key2 => 'value2',)
