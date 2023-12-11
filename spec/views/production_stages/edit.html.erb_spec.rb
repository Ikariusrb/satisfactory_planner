require 'rails_helper'

RSpec.describe "production_stages/edit", type: :view do
  let(:production_stage) {
    ProductionStage.create!()
  }

  before(:each) do
    assign(:production_stage, production_stage)
  end

  it "renders the edit production_stage form" do
    render

    assert_select "form[action=?][method=?]", production_stage_path(production_stage), "post" do
    end
  end
end
