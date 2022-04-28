# frozen_string_literal: true

# Me recomiendo a mimsmo leer esto cuando quiera recordar: https://tmr08c.github.io/2020/07/splat-versus-spread/

######################################## REST PARAMETERS/SPLAT MODO SLURP OR COLLECT ##################################
# los parametros 'splat' se parecen mucho a los parametros 'rest' de javascript
# Los parametros Splat son parametros precedidos por un *, que le dice al programa que
# el método puede recibir uno o más argumentos.

def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up('What up', 'Ian', 'Zoe', 'Zenas', 'Eleanor')

############################################# DESTRUCTURACION #########################################################
# Ademas de los parametros splat, el operador splat se puede usar para usar destructuracion en Ruby
# esto se parece a lo que hace en javascript algo como `const [x, y, z] = [1, 2, 3];`
x, y, z = *[1,2,3]
puts x  # => 1
puts y  # => 2
puts z  # => 3
# Puedo usar el modo slurp de splat para almacenar los elementos restantes del array
first, *rest = [1, 2, 3]
print first # => 1
print rest # => [2, 3]

# En Ruby tambien se puede hacer la destructuracion SIN SPLAT, muy parecido a JS, se llama PARALLEL ASSIGNMENT
destruct1, destruct2 = [1, 2]
print destruct1 # => 1
print destruct2 # => 2

#################################### SPLAT EN MODO SPLIT USADO COMO SPREAD EN JS ######################################
# Pero ademas tambien se puede usar para "expandir un array" y hacer algo parecido al 'spread operator'
# de JavaScript en las funciones.
#
# En JavaScript seria algo como asi:
# function sum(x, y, z) {
#   return x + y + z;
# }
# const numbers = [1, 2, 3]
# console.log(sum(...numbers))
#
def suma(x, y, z)
  puts "#{x + y + z} : #{x.class}"
end

suma(*[1,2,3]) # => 6 : Integer

########################################################
# En Javascript el spread tambien se usa para combinar arrays, Ruby tambien permite "COMBINAR ARRAYS USANDO SPLAT"
arr1 = [1, 2, 3]
# Sin el operador splat
print [arr1, 4] # => [[1, 2, 3], 4]
# Con el operador splat
print [*arr1, 4] # => [1, 2, 3, 4]

# Aunque lo anterior se puede usar, lo mas normal es seguir la forma 'idiomatica' de ruby
a1 = [1, 2, 3]
a2 = [3, 4, 5]

print a1 + a2 # => [1, 2, 3, 3, 4, 5]

#########################################################
# Tambien se puede usar para COMBINAR HASHES, pero en este caso se usa un doble splat
bob = { name: 'Bob', age: 46 }

# Sin el operador splat Ruby lanza un error
## { bob, business: "Bob's Burgers" } # => SyntaxError ((irb):3: syntax error, unexpected ',', expecting =>)

# Con el doble splat
bob_expandido = { **bob, business: "Bob's Burgers" }
print bob_expandido # => {:name=>"Bob", :age=>46, :business=>"Bob's Burgers"}

#######################################################################################################################
