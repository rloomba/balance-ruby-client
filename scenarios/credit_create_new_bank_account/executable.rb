require 'balanced'
Balanced.configure('3bfbbc04b76711e282ba026ba7cd33d0')

marketplace = Balanced::Marketplace.my_marketplace

bank_account_info = {
:account_number => '9900000001',:name => 'Johann Bernoulli',:routing_number => '121000358',:type => 'checking',
}
credit = Balanced::Credit.new(
  :amount => 10000,
  :bank_account => bank_account_info
).save
