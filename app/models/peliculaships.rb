class Peliculaships < ActiveRecord::Base
  # attr_accessible :title, :body
      belongs_to :Pelicula
      belongs_to :Protag
      belongs_to :Reparto

end
