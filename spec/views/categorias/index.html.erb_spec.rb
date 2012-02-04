require 'spec_helper'

describe "categorias/index.html.erb" do
  before(:each) do
    assign(:categorias, [
      stub_model(Categoria,
        :post_id => 1,
        :descricao => "Descricao"
      ),
      stub_model(Categoria,
        :post_id => 1,
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of categorias" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end
