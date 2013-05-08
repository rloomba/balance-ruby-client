require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')

merchant = Balanced::Account.find('/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/accounts/AC3ZKahk43N26zlxDLybrEMg')
credits = merchant.credits