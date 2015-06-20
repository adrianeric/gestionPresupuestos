class Cliente < ActiveRecord::Base
    has_many :contactos
    has_one :moneda
    has_one :iva_condicion
end
