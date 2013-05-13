require 'balanced'
Balanced.configure('3bfbbc04b76711e282ba026ba7cd33d0')

marketplace = Balanced::Marketplace.my_marketplace

merchant_data = {
:dob => '1989-12',:name => 'Timmy Q. CopyPasta',:phone_number => '+14089999999',:postal_code => '94110',:street_address => '121 Skriptkid Row',:type => 'person',
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
