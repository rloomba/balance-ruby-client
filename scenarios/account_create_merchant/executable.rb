require 'balanced'
Balanced.configure('3bfbbc04b76711e282ba026ba7cd33d0')

account = Balanced::Account.find('/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/accounts/AC3ZKahk43N26zlxDLybrEMg')
account.add_bank_account("/v1/bank_accounts/BA4aX8D0cax5CsNc4Cb1cmvM")
