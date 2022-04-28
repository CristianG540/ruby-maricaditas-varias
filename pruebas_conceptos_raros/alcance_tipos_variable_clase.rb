# frozen_string_literal: true

# pequeña clase de prueba
class PruebaBanana
  @@class_var = 'Hola berriondos, class var'
  @class_instance_var = 'Hola puercos, class instance var'
  # @param [String] nombre
  def initialize(nombre)
    @nombre = nombre
  end

  def print_nombre
    puts @nombre
    puts @@class_var # Se muestra en la consola
    puts @class_instance_var # no se muestra, no se puede acceder desde metodos de instancia
  end

  def self.prueba_de_alcance
    puts @@class_var # Se muestra
    puts @class_instance_var # Se muestra / solo se puede acceder desde metodos estaticos (de clase) siempre y cuando no sea una subclase
  end
end

class PruebaBananaLinda < PruebaBanana
end

banano_feo = PruebaBanana.new('Banano feo')
banana_lindo = PruebaBananaLinda.new('Banana linda')

puts banano_feo.print_nombre

puts PruebaBanana.prueba_de_alcance
puts '-----------------'
puts PruebaBananaLinda.prueba_de_alcance
