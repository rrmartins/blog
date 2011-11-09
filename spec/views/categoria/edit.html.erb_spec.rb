require 'spec_helper'

describe "categoria/edit.html.erb" do
  before(:each) do
    @categorium = assign(:categorium, stub_model(Categorium,
      :post_id => 1,
      :descricao => "MyString"
    ))
  end

  it "renders the edit categorium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => categoria_path(@categorium), :method => "post" do
      assert_select "input#categorium_post_id", :name => "categorium[post_id]"
      assert_select "input#categorium_descricao", :name => "categorium[descricao]"
    end
  end
end
