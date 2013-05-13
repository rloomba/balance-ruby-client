require 'balanced'
Balanced.configure('3bfbbc04b76711e282ba026ba7cd33d0')


merchant_data = {
  :name => 'Skripts4Kids',:phone_number => '+140899188155',:postal_code => '91111',:street_address => '555 VoidMain Road',:tax_id => '211111111',:type => 'business',
  :person => {
      :dob => '1989-12',:name => 'Timmy Q. CopyPasta',:phone_number => '+14089999999',:postal_code => '94110',:street_address => '121 Skriptkid Row',
  }
}
account = Balanced::Marketplace.my_marketplace.create_account

begin
  account.promote_to_merchant(merchant_data)
rescue Balanced::MoreInformationRequired => error
  # could not identify this account.
  puts 'redirect merchant to: ' + error.redirect_uri
rescue Balanced::Error => error
  # TODO: handle 400 and 409 exceptions as required
  raise
end
