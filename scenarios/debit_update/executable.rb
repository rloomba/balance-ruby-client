require 'balanced'
Balanced.configure('3bfbbc04b76711e282ba026ba7cd33d0')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/debits/WD67GtVCQfPlLerH6my0mZM4')
debit.description = 'New description for debit'
debit.meta = {:anykey=>"valuegoeshere", :"facebook.id"=>"1234567890"}
debit.save