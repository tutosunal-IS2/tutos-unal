class Tutor < ApplicationRecord
	validates :nombre, :presence => {:message => "El campo de nombre no puede estar en blanco"}, :length => {minimum => 3, maximum => 45, :message => "El nombre debe tener al menos 3 caracteres y máximo 45"}
end
