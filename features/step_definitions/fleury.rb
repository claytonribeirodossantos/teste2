# frozen_string_literal: true



Dado('que o usuário esteja na página principal do site Fleury') do

  visit 'https://www.fleury.com.br/'

end



Quando('usuário clica em unidades') do

  find('.boxcomponentstyle__Item-sc-43ermp-1:nth-child(16)').click

end



Quando('digita no campo de busca {string}, site carrega as opções') do |endereco|

  page.execute_script 'window.scrollBy(0,1000)'



  find('#input-search-field').set endereco



  find('#input-search-field').send_keys :enter

end



Quando('usuario deve clicar na opção desejada') do

  find('#button-see-on-map-2-brasilia > .buttoncomponentstyle__ButtonContentStyled-sc-11us3l0-3').click

end



Então('usuario deve visualizar a página do site Fleury na unidade Brasília') do

  unidade = page.has_css?('.typographycomponentstyle__H1-sc-1oox73n-1')



  expect(unidade).to be true

end



Quando('seleciona as facilidades, site carrega as opções') do

  page.execute_script 'window.scrollBy(0,500)'



  find('.fa-chevron-down').click



  find('.checkbox-fieldcomponentstyle__CheckboxFieldStyled-sc-1mdajsk-0:nth-child(4)').set(true)



  find('.checkbox-fieldcomponentstyle__CheckboxFieldStyled-sc-1mdajsk-0:nth-child(5)').set(true)

end



Então('deve clicar na primeira unidade que for apresentada') do

  find('#button-see-on-map-2-alphaville > .buttoncomponentstyle__ButtonContentStyled-sc-11us3l0-3').click

end



Então('usuario deve visualizar a pagina na unidade selecionada') do

  expect(page).to have_xpath("//h1[contains(.,'Alphaville')]")

end

