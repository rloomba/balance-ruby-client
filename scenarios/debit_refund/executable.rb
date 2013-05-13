require 'balanced'
Balanced.configure('3bfbbc04b76711e282ba026ba7cd33d0')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/debits/WD75gJAboXMT5zRQX7pVObLy')
debit.refund