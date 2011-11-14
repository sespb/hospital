class Municipio < ActiveRecord::Base
  belongs_to :macro
  belongs_to :gerencia

  has_many :municipios
end
