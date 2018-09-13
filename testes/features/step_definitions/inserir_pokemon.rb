#enconding: utf-8
Dado("que estou na pagina da pokedex") do
    visit 'http://pokedex-angular-example.herokuapp.com/#!/list'
  end
  
  E("clico para adicionar um novo Pokemon") do
    find('.btn-success').click
  end
  
  Quando("preencho as informações") do
    sleep(2)
    find_field('id').set(1)
    sleep(2)
    find_field('name').set('Charmander')
    sleep(2)
    find_field('type1').find('option', text: 'Fogo').select_option
    sleep(2)
    find_field('type2').find('option', text: 'Fogo').select_option
    sleep(2)
    find_field('attack').set(10)
    sleep(2)
    find_field('defense').set(7)
    sleep(2)
    find_field('hp').set(1000)
    sleep(2)
  end
  
  E("clico em salvar") do
    click_button('Salvar')
    sleep(2)
  end
  
  Então("um novo Pokemon é adicionado na pokedex") do
    expect(page).to have_css("span ", :text => "Charmander")  
    sleep(2)  
  end