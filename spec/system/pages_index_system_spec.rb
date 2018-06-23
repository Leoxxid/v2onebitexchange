# require 'rails_helper'
# WebMock.allow_net_connect!
#
# RSpec.describe "Exchange Currency Process", type: :system, js: true do
#   it "exchange value" do
#     visit '/'
#     url = URI.parse(current_url)
#     p url
#     page.evaluate_script('window.confirm = function() { return true; }')
#     within("#exchange_form") do
#       fill_in 'amount', with: '10'
#       select('EUR', from: 'source_currency')
#       select('USD', from: 'target_currency')
#     end
#   end
# end
