require 'balanced'
Balanced.configure('3bfbbc04b76711e282ba026ba7cd33d0')

marketplace = Balanced::Marketplace.my_marketplace

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA21zXdpMAiMKQLFuHAEI8GK')
bank_account.credit(10000)