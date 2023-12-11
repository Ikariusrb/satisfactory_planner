class ProductionLine

  def initialize(production_stage:)
    @starting_stage = production_stage

  end

  def stages
    @stages ||= begin
      nil
    end
  end
end
