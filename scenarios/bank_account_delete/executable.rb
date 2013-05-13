require 'balanced'
Balanced.configure('3bfbbc04b76711e282ba026ba7cd33d0')

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA1Qa37HhSK195o33a1qcpCy')
bank_account.destroy
