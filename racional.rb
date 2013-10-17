# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
	
	def initialize(*args)
		z = gcd(args[0], args[1])
		@x, @y = args[0]/z, args[1]/z
	end

	def to_s  # devuelve una cadena con la representación del racional
		"#@x/#@y"
	end
	def minimo(a, b)
		z = gcd(a, b)
		a = a/z
		b = b/z
		return c, d
	end

	def minMultiplo(u, v)
		uu, vv = u, v
		return (uu/gcd(uu,vv)) * vv
	end

	def suma (*args) # devuelve un nuevo racional que suma al objeto que invoca el que le pasan como parámetro
		if args.size == 2
                        @a, @b = minimo(args[0], args[1])
                else
                        @a = args[0]
                        y = 1
                end

                if (@x == @b) # Denominadores iguales
                        @x += @a
                else 
                        denominador = minMultiplo(@x,@b)
                        numerador = ((denominador/@y) * @X) + ((denominador/y) * x)
                        @x, @y = minimo(numerador, denominador)
                end

                return @x, @y
	end
	
	def resta # devuelve un nuevo racional que resta al objeto que invoca el que le pasan como parámetro
	end

	def producto # devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
		
	end
	
	def division # devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
	end

end

