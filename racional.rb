# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
	
	def initialize(*args)
		if args.size == 2
                        x = gcd(args[0],args[1])
                        @a = args[0] / x
                        @b = args[1] / x
                else
                        @a = args[0]
                        @b = 1
                end
	end

	def to_s  # devuelve una cadena con la representación del racional
		"#{@a}/#{@b}"
	end
	def minimo(c, d)
                z = gcd(c, d)
                c = c / z
                d = d / z
                return c, d
	end

	def minMultiplo(u, v)
		u, v = u.abs, v.abs
		return (u / gcd(u,v)) * v
	end

	def suma (*args) # devuelve un nuevo racional que suma al objeto que invoca el que le pasan como parámetro
		if args.size == 2
                        x, y = minimo(args[0],args[1])
                else
                        x = args[0]
                        y = 1
                end

                if (@b == y) # Igual denominador
                        @a += x
                else # Distinto denominador
                        den = minMultiplo(@b,y)
                        num = ((den / @b) * @a) + ((den / y) * x)
                        @a, @b = minimo(num, den)
                end

                return @a, @b
	end
	
	def resta(*args) # devuelve un nuevo racional que resta al objeto que invoca el que le pasan como parámetro
		if args.size == 2
                        x, y = minimo(args[0],args[1])
                else
                        x = args[0]
                        y = 1
                end

                if (@b == y) # Igual denominador
                        @a -= x
                else # Distinto denominador
                        den = minMultiplo(@b,y)
                        num = ((den / @b) * @a) - ((den / y) * x)
                        @a, @b = minimo(num, den)
                end

                return @a, @b
	end

	def producto(*args) # devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
		if args.size == 2
                        x, y = minimo(args[0],args[1])
                else
                        x = args[0]
                        y = 1
                end

                @a, @b = minimo(@a * x, @b * y)

                return @a, @b
	end
	
	def division(*args) # devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
		if args.size == 2
                        x, y = minimo(args[0],args[1])
                else
                        x = args[0]
                        y = 1
                end

                @a, @b = minimo(@a * y, @b * x)

                return @a, @b
	end

end

