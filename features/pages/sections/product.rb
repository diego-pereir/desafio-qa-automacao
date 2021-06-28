module Sections
  class Product < SitePrism::Section
    element  :image, '.img-responsive'
    element  :name, '.product-name'
    element  :price, '.price product-price'
  end
end
