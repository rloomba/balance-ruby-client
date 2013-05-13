require 'balanced'
Balanced.configure('3bfbbc04b76711e282ba026ba7cd33d0')

hold = Balanced::Hold.find('/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/holds/HLNJcTm79tN3zJrkaWCysij')
debit = hold.capture(
  {:appears_on_statement_as=>"ShowsUpOnStmt", :description=>"Some descriptive text for the debit in the dashboard"}
)
