class Presupuesto < ActiveRecord::Base

    has_many :items_presupuesto
    has_one :contacto
    has_one :forma_de_pago
    has_one :moneda
    has_one :estado_presupuesto

end
