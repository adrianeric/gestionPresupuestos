class Proveedor < ActiveRecord::Base

    has_one :moneda
    has_one :forma_de_pago
    
end
