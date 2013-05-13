require 'balanced'
Balanced.configure('3bfbbc04b76711e282ba026ba7cd33d0')

refund = Balanced::Refund.find('/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/refunds/RF1mIo1x6hcnRWASOA5pFXfV')
refund.description = 'update this description'
refund.meta = {:"refund.reason"=>"user not happy with product", :"user.notes"=>"very polite on the phone", :"user.refund.count"=>"3"}
refund.save