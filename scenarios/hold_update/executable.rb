require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')

hold = Balanced::Hold.find('/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/holds/HL7mJ6TobTRND2M8199HioqW')
hold.description = 'update this description'
hold.meta = {:"holding.for"=>"user1", :"meaningful.key"=>"some.value"}
hold.save