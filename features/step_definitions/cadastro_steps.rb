Dado("que acesso a página de cadastro") do
  visit "/"
  click_on "EXPERIMENTE AGORA"
end
sleep 1
Quando("submeto o meu cadastro com:") do |table|
  user = table.rows_hash
  find("input[name*=email]").set user[:email]
  find("input[placeholder='Sua senha secreta']").set user[:senha]
  find("input[placeholder='Confirme a senha']").set user[:confirma_senha]

  click_on "Cadastrar"
  sleep 1
end

Então("devo ser redirecionado para a área logada") do
  expect(page).to have_css ".dashboard"
end

Então("devo ver a mensagem: {string}") do |string|
  alert = find(".message p")
  expect(alert.text).to eql string
end
