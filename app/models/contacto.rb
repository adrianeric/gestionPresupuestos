class Contacto < ActiveRecord::Base

    belong_to :cliente
    has_one :tratamiento

end
