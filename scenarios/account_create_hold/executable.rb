require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')

account = Balanced::Account.find('')
account.hold(:amount => '234')
