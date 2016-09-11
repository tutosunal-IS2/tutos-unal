class Estudiante < ApplicationRecord
	validates :nombre, :presence => {:message => "El campo de nombre no puede estar en blanco"}, :length => {minimum => 3, maximum => 45, :message => "El nombre debe tener al menos 3 caracteres y máximo 45"}
	validates :plan_de_estudios => :presence => {:message => "El campo de plan de estudios no puede estar vacío"}, :length => {minimum => 6, maximum => 45, :message => "El nombre del plan de estudios debe tener al menos 6 caracteres y máximo 45"}
	validates :semestre, :presence => {:message => "El campo de semestre no puede estar vacío"}, :numericality => {:only_integer => true, :message => "El dato proporcionado no es válido"}
end
