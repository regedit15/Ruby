require 'test_helper'

class TiendaControllerTest < ActionController::TestCase
	test "test del controlador tienda" do
		get :index
		assert_response :success

		assert_select '#columnas #lado a', minimum: 4
		assert_select '#principal .entrada', 3
		assert_select 'h3', 'Programming Ruby 1.9'
		assert_select '.precio', /\$\s[,\d]+\.\d\d/

	end

end
