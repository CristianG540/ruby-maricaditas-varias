# frozen_string_literal: true

######### el bloque mas basico del planeta #########
def saludar
  yield # Si no llamo yield el bloque de codigo que le mande al metodo no se ejecuta, aun asi la app no falla si no uso yield
end

saludar { puts 'Hola perro sarnoso' }

# Tambien puedo usar do/end en vez de '{}', segun entiendo
# se priefere usar '{}' si el bloque de codigo va en una sola linea
# y se usa do/end si el bloque de codigo tiene varias lineas
saludar do
  puts 'Hola perro flaco'
end
####################################################
