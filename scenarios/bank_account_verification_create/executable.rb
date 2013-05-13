require 'balanced'
Balanced.configure('3bfbbc04b76711e282ba026ba7cd33d0')

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA2KMK6p9rIpd8lOpZXu4QPB')
verification = bank_account.verify
