require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')

bank_account = Balanced::BankAccount.new(
:account_number => '9900000001',:name => 'Johann Bernoulli',:routing_number => '121000358',:type => 'checking',
).save
