require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')

refund = Balanced::Refund.find('/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/refunds/RF1mIo1x6hcnRWASOA5pFXfV')
refund.description = 'update this description'
refund.meta = {:"refund.reason"=>"user not happy with product", :"user.notes"=>"very polite on the phone", :"user.refund.count"=>"3"}
refund.save