class Hospital < ActiveRecord::Base
  belongs_to :municipio
  has_one :leito
end
