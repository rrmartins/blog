require 'spec_helper'

describe "categoria/show.html.erb" do
  before(:each) do
    @categorium = assign(:categorium, stub_model(Categorium,
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
