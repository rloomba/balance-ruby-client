require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/debits/WD67GtVCQfPlLerH6my0mZM4')
debit.description = 'New description for debit'
debit.meta = {:anykey=>"valuegoeshere", :"facebook.id"=>"1234567890"}
debit.save