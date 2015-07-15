class ItemPresupuesto < ActiveRecord::Base

    belongs_to :presupuesto
    has_one :unidad_medida
    has_one :moneda
    has_many :recursos_presupuesto
    
end
