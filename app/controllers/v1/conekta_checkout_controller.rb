class V1::ConektaCheckoutController < ApplicationController
  def index
  end

def charge

  begin
   binding.pry

   api_instance = Conekta::AntifraudApi.new
   create_risk_rules_data = Conekta::CreateRiskRulesData.new({description: 'this client email was verified at 20/09/22 by internal process', field: 'email | phone | card_token', value: 'email@example.com | 818081808180 | src_2qUCNd5AyQqfPMBuV'})
   result = api_instance.create_rule_blacklist(create_risk_rules_data)


   charge = Conekta::Charge.create(
  amount: 1000,
  currency: 'MXN',
  description: 'Pago de prueba',
  card: 'tok_test_visa_4242'
)
   #  @charge ||= Conekta::Charge.create({
   #    amount: params['unit_price_cents'],
   #    currency: 'MXN',
   #    description: params['description'] || 'Test description',
   #    reference_id: "001-id-test",
   #    details: {
   #      email: params['email'],
   #      line_items: [
   #        {
   #          name: 'Tarjeta de credito',
   #          description: 'Se pago la tarjeta de credito',
   #          unit_price: params['unit_price_cents'],
   #          quantity: 1,
   #          sku: "pago-test",
   #          type: "credit-card",
   #        }
   #      ]
   #    },
   #    card: params['conekta_token_id']
   #  })
    rescue Conekta::ParameterValidationError => error
      puts error.message_to_purchaser
    rescue Conekta::ProcessingError => error
      puts error.message_to_purchaser
    rescue Conekta::Error => error
      puts error.message_to_purchaser
    end
  end
end
