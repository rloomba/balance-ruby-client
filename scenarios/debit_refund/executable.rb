require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/debits/WD75gJAboXMT5zRQX7pVObLy')
debit.refund