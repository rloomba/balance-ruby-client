require 'balanced'
Balanced.configure('3bfbbc04b76711e282ba026ba7cd33d0')

bank_account = Balanced::BankAccount.new(
:account_number => '9900000001',:name => 'Johann Bernoulli',:routing_number => '121000358',:type => 'checking',
).save
