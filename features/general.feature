Feature: El usuario puede realizar un pogo de prueba usando la API de Conekta

Scenario: El usuario paga usando la API de Conekta
   Given El usuario coloca la cantidad de 1000 pesos
      And El usuario escribe la descripcion como "Pago de Conekta"
      And El usuario paga usando la tarjeta "tok_test_visa_4242"
   When El usuario hace el pago en Conekta
   Then El usuario recibe un 200