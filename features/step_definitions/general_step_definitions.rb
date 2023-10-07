Given('El usuario coloca la cantidad de {int} pesos') do |unit_price|
   @unit_price_cents = unit_price * 100
end

Given('El usuario escribe la descripcion como {string}') do |description|
   @description = description
end

Given("El usuario paga usando la tarjeta {string}") do |conekta_token_id|
   @conekta_token_id = conekta_token_id
end

When('El usuario hace el pago en Conekta') do
   params = {
      unit_price_cents: @unit_price_cents,
      description: @description,
      conekta_token_id: @conekta_token_id
   }

   post charge_v1_conekta_checkout_index_path, params
   @response_data = JSON.parse(last_response.body)
end

Then('El usuario recibe un {int}') do |int|
   binding.pry
end