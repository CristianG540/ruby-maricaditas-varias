# Por algun motivo un array 2d y un objeto clave valor / hash se recorren igual al usar el metodo .each
# no tengo ni idea de porque pasa esto, si por ejemplo paso un solo valor en el bloque el each funciona
# como normalmente lo haria en JS
#
# Creo que la razon puede tener que ver con algun tipo de destructuracion automatica en ruby parecida a la de JS
#

array_2d = [ ['ford', 'azul'], [ 'ferrari', 'rojo' ], ['lambo', 'amarillo'] ]

array_2d.each do |_key, array|
  print array # prints: azulrojoamarillo
end

array_2d.each do |array|
  print array # prints: ["ford", "azul"]["ferrari", "rojo"]["lambo", "amarillo"]
end

############################## POSIBLE EXPLICACION A ESTE MISTERIO ####################################################
# Leer este articulo para comprender el contexto: https://jsarbada.wordpress.com/2019/02/05/destructuring-with-ruby/
# Destructuring Block Arguments:
dobles = [[1, 2], [4, 5], [7, 8]]
dobles.each { |(_first, second)| print second } # => 258

triples = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
triples.each { |(_first, second, _third)| print second } # => 258

triples.map { |(_first, *rest)| rest.join(' ') } # => ["2 3", "5 6", "8 9"]
