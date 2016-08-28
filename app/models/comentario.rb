class Comentario < ApplicationRecord
	validates :contenido, :presence => {:message => "EL comentario no puede estar en blanco"}, :length => {minimum => 1, maximum => 45, :message => "El comentario debe tener al menos 1 caracter y máximo 45"}
end
