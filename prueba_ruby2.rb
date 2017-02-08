#1
#Se tiene el siguiente código que no funciona, para arreglarlo se pide que método1
#funcione como método de instancia.

class T

 def method1()

 end
end
T.new.method1


#2
#Se tiene el siguiente código que no funciona, para arreglarlo se pide que método1
#funcione como método de clase.

class T
 def self.method1()
 end
end
T.method1

#3

#Se tiene el siguiente código, se pide convertir la clase en un módulo. FALTA

module Prueba
 A = 5
 def self.A
 A
 end

end

#4

#Se tiene el siguiente objeto.
#Pero tiene un problema menor, arreglarlo.

class Complejo
	attr_accessor :x, :y
 def initialize(x, y)
 @x = x
 @y = y
 end

 def +(complejo)
 Complejo.new(@x + complejo.x, @y + complejo.y)
 end
end

#5

#Se pide que:
#Q herede de T
#Q al hacer inicializado llame a method1
#method1 debe devolver un número al azar
#El método devuelto debe ser guardado en una variable de instancia de Q


class T
	def self.method1
 		rand
 		
	end
end

class Q < T
	def initialize
	super
	@numero = method1
	end
end

print T.new.method1


#6
#Dado los siguientes objetos:
#Crear el módulo Stockable, este módulo introduce la variable stock y debe tener un
#método llamado has_stock?, que devuelva true si el stock es mayor que cero.



module Stockable
	def has_stock?
		@stock = stock
		@verify = false 
		if stock > 0
			verify = true
		end
	end

end

module Priceable
	 attr_accessor :price
	 def discoutend_price(discount)
		 @price - @price * discount
	 end
end

class Product
	 include Priceable
	 def initialize(price)
		 @price = price
	 end
end

#7
#Dado el siguiente código
#Modificar T, Q y Car para que Car pueda contar las instancias respectivas de T y Q,
#además crear métodos dentro de car para obtener el número de instancias de cada
#uno.
#Para probar Crear 20 instancias de T y 25 de Q dentro de Main.


class Car
	attr_accessor :t_instances, :q_instances
 @@t_instances = 0
 @@q_instances = 0
	
	def self.instancias_cuenta

	end
end

class T
	def cuenta_t
		@@t_instances +=1

	end
end

class Q
	def cuenta_q
		@@q_instances += 1
	end
end

20.times do
	Car.new.cuenta_t
end

