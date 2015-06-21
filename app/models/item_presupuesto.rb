class ItemPresupuesto < ActiveRecord::Base

    belongs_to :presupuesto
    has_one :unidad_medida
    
end
