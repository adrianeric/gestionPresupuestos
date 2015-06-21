class FormaDePago < ActiveRecord::Base

    has_many :esquemas_de_vencimiento
    
end
