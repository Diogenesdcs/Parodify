Dado("Login com {string} e {string}") do |email, senha|
  visit "/"
  click_on "Login"
  find("input[type=email]").set email
  find("input[type=password]").set senha
  click_on "Log in"
end

Dado("que eu gosto muito de {string}") do |cat|
  find("a[href='/search/new']").click              #busca seletor e botão de click para parodias
  find("img[src$='rock.png']").click    #busca seletor de categoria pelo botão de click pela variavel.
end

Quando("toco a seguinte canção:") do |table|
  @parody = table.rows_hash

  find("a", text: @parody[:banda]).click

  song = find(".song-item", text: @parody[:parodia])
  song.find(".fa-play-circle").click
end
Então("essa parodia deve ficar em reprodução") do
  song_play = find(".playing")
  expect(song_play).to have_text @parody[:parodia]
  sleep 1
end
