class Comentario < ApplicationRecord
	validates :contenido, :presence => {:message => "El comentario no puede estar en blanco"}, :length => {maximum => 300, :message => "El comentario no debe superar los 300 caracteres"}
end
