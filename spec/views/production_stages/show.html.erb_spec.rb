require 'rails_helper'

RSpec.describe "production_stages/show", type: :view do
  before(:each) do
    assign(:production_stage, ProductionStage.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
