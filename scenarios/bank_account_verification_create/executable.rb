require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA2KMK6p9rIpd8lOpZXu4QPB')
verification = bank_account.verify