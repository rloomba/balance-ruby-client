require 'balanced'
Balanced.configure('03921a2cb69311e28b89026ba7c1aba6')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP1PM7wJyQTyV8EmEKKaxDom/debits/WD1kAh42gl8MSgZWYn8jab4c')
debit.refund(
    :description => 'Refund for Order #1111',
    :meta => {:"fulfillment.item.condition"=>"OK", :"merchant.feedback"=>"positive", :"user.refund_reason"=>"not happy with product"}
)