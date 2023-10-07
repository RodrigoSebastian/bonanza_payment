Feature: Escenarios donde el usuario realiza pagos de manera correcta usando la plataforma de Conekta

Scenario: El usuario paga usando una tarjeta VISA
   Given El usuario coloca la cantidad de 1000 pesos
      And El usuario escribe la descripcion como "Pago de Conekta"
      And El usuario paga usando la tarjeta "tok_test_visa_4242"
   When El usuario hace el pago en Conekta
   Then El usuario recibe un 200

Scenario: El usuario paga usando una tarjeta Mastercard
   Given El usuario coloca la cantidad de 1000 pesos
      And El usuario escribe la descripcion como "Pago de Conekta"
      And El usuario paga usando la tarjeta "tok_test_mastercard_4444"
   When El usuario hace el pago en Conekta
   Then El usuario recibe un 200