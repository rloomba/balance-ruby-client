require 'balanced'
Balanced.configure('3bfbbc04b76711e282ba026ba7cd33d0')

buyer = Balanced::Account.find('/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/accounts/AC3ZKahk43N26zlxDLybrEMg')
buyer.debit({:amount=>5000, :appears_on_statement_as=>"Statement text", :description=>"Some descriptive text for the debit in the dashboard"})
