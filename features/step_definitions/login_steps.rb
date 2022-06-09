Dado("que acesso a pagina Login") do
  visit "/"
  click_on "Login"
end

Quando("submento minhas credenciais com: {string} e {string}") do |email, senha|
  find("input[type=email]").set email
  find("input[type=password]").set senha
  click_on "Log in"
end
Então("devo ver a mensagem de erro: {string}") do |string|
  message = find(".message .message-body")
  expect(message.text).to eql string
end
