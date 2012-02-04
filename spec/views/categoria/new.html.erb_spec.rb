require 'spec_helper'

describe "categoria/new.html.erb" do
  before(:each) do
    assign(:categorium, stub_model(Categorium,
      :post_id => 1,
      :descricao => "MyString"
    ).as_new_record)
  end

  it "renders new categorium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => categoria_path, :method => "post" do
      assert_select "input#categorium_post_id", :name => "categorium[post_id]"
      assert_select "input#categorium_descricao", :name => "categorium[descricao]"
    end
  end
end
