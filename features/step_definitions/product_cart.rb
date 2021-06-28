Dado("que esteja na página inicio") do
    @home_page.load
  end
  
  Quando("clicar em aba WOMEN") do
    @home_page.submenu.click
  end
  
  Então("tela de produtos WOMEN deve ser exibida") do
    
    expect(@product_cart_page.breadcrumb_product).to have_content 'Women'			
  end
  
  Quando("adicionar um produto ao carrinho") do
    @product_cart_page.add_cart.click
  end
  
  Então("banner de produto adicionado com sucesso deve ser exibido") do
    expect(@product_cart_page.message_add_cart).to have_content 'Product successfully added to your shopping cart'	
  end