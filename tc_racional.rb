# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

	def test_suma
		assert_equal([14, 5], Fraccion.new(4,5).suma(8,4))
		assert_equal([14, 3], Fraccion.new(8,3).suma(2))
	end
	
	def test_resta
		assert_equal([-6, 5], Fraccion.new(4,5).resta(8,4))
		assert_equal([2, 3], Fraccion.new(8,3).resta(2))
	end

	def test_producto
		assert_equal([8, 5], Fraccion.new(4,5).producto(8,4))
		assert_equal([16, 3], Fraccion.new(8,3).producto(2))
	end

	def test_division
		assert_equal([2, 5], Fraccion.new(4,5).division(8,4))
		assert_equal([4, 3], Fraccion.new(8,3).division(2))
	end

end
