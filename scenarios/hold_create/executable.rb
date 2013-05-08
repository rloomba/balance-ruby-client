require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')

buyer = Balanced::Account.find('/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/accounts/AC3ZKahk43N26zlxDLybrEMg')
buyer.hold(
{:amount=>5000, :description=>"Some descriptive text for the debit in the dashboard"}
)