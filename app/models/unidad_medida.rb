class UnidadMedida < ActiveRecord::Base

    belong_to :item_presupuesto
    belong_to :recurso_presupuesto

end
