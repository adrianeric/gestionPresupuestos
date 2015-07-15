class RecursoPresupuesto < ActiveRecord::Base

    belongs_to :item_presupuesto
    has_one :categoria_recurso
    has_one :proveedor
    
end
