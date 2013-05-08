require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')

marketplace = Balanced::Marketplace.my_marketplace

credit = Balanced::Credit.find('/v1/credits/CR4L0aNJTrvSLp6Z6N7FR9Ms')