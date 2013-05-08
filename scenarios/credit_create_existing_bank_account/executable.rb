require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')

marketplace = Balanced::Marketplace.my_marketplace

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA21zXdpMAiMKQLFuHAEI8GK')
bank_account.credit(10000)