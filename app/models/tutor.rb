class Tutor < ApplicationRecord
	validates :nombre, :presence => {:message => "Usted debe ingresar su nombre"}, :length => {minimum => 3, maximum => 45, :message => "El nombre debe tener al menos 3 caracteres y máximo 45"}
end
