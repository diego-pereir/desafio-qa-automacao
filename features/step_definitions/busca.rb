Dado("que esteja na página inicial") do
  @home_page.load
end

Quando("buscar pelo produto {string}") do |query|
  @home_page.search(query)
end

Então("devem ser retornados produtos") do
  expect(@search_page.products.first).to have_image 
  expect(@search_page.products.first).to have_name 
  expect(@search_page.products.first.name.text).to have_content 'shirt'
end

Quando("buscar por um produto inexistente") do
  @home_page.input_search_form.set 'Camiseta Masculina'
  @home_page.button_search.click
end

Então("tela de produto inexistente deve ser exibida") do
  expect(@search_page.existent_product_fail).to have_content '0 results have been found.'
end
