require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')

hold = Balanced::Hold.find('/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/holds/HLNJcTm79tN3zJrkaWCysij')
debit = hold.capture(
  {:appears_on_statement_as=>"ShowsUpOnStmt", :description=>"Some descriptive text for the debit in the dashboard"}
)
