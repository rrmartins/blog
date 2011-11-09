require 'spec_helper'

describe "categorias/show.html.erb" do
  before(:each) do
    @categoria = assign(:categoria, stub_model(Categoria,
      :post_id => 1,
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
  end
end
