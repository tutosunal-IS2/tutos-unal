class Estudiante < ApplicationRecord
	validates :nombre, :presence => {:message => "Usted debe ingresar su nombre"}, :length => {minimum => 3, maximum => 45, :message => "El nombre debe tener al menos 3 caracteres y máximo 45"}
	validates :plan_de_estudios => :presence => {:message => "Usted debe ingresar su plan de estudios"}, :length => {minimum => 6, maximum => 45, :message => "El nombre debe tener al menos 6 caracteres y máximo 45"}
	validates :semestre, :numericality => {:only_integer => true, :message => "El dato proporcionado no es válido"}, :presence => {:message => "Por favor mencione en qué semestre está"}
end
