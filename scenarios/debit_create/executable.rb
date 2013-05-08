require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')

buyer = Balanced::Account.find('')
buyer.debit({:amount=>5000, :appears_on_statement_as=>"Statement text", :description=>"Some descriptive text for the debit in the dashboard"})
