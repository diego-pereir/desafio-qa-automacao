module Pages
  class ProductCart < SitePrism::Page
    set_url '/index.php?id_category=3&controller=category'
    
    element  :add_cart, '#center_column > ul > li:nth-child(1) > div > div.right-block > div.button-container'
    element  :message_add_cart, '#layer_cart'
    element  :breadcrumb_product, '.navigation_page'
  end
end