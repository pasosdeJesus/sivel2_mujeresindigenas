require 'application_system_test_case'

class PuedeVerHogarTest < ApplicationSystemTestCase

  test "hogar con contenido" do 
    visit Rails.configuration.relative_url_root
    assert page.has_content?("Mujeres")
  end

end
