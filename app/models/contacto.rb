class Contacto < ActiveRecord::Base

    belongs_to :cliente
    has_one :tratamiento

end
