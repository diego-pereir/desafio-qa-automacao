require_relative 'sections/product.rb'

module Pages
  class SearchPage < SitePrism::Page
    set_url '/index.php'
    element :existent_product_fail, '.heading-counter'
    sections :products, Sections::Product, '.product-container'
  end
end
