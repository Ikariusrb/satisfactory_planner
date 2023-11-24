require 'rails_helper'

RSpec.describe "production_stages/new", type: :view do
  before(:each) do
    assign(:production_stage, ProductionStage.new())
  end

  it "renders new production_stage form" do
    render

    assert_select "form[action=?][method=?]", production_stages_path, "post" do
    end
  end
end
