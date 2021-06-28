module Pages
  class HomePage < SitePrism::Page
    set_url '/index.php'

    element  :logo, '#header_logo'
    element  :btn_contact_us, '#contact-link'
    element  :btn_go_to_sign_in, '.login'
    element  :input_search_form, '#search_query_top'
    element  :button_search, '.button-search'
    element  :input_newsletter_footer_email, '#newsletter-input'
    element  :btn_newsletter_footer_register, '#newsletter_block_left'
    element  :submenu, '#block_top_menu > ul > li:nth-child(1) > a'

    def search(query)
      input_search_form.set(query)
      button_search.click
    end

  end
end
