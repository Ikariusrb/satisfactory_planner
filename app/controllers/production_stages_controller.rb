class ProductionStagesController < InheritedResources::Base

  private

    def production_stage_params
      params.require(:production_stage).permit()
    end

end
