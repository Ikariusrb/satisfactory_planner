require 'rails_helper'

RSpec.describe "production_stages/index", type: :view do
  before(:each) do
    assign(:production_stages, [
      ProductionStage.create!(),
      ProductionStage.create!()
    ])
  end

  it "renders a list of production_stages" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
