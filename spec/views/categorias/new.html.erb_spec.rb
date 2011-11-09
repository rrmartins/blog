require 'spec_helper'

describe "categorias/new.html.erb" do
  before(:each) do
    assign(:categoria, stub_model(Categoria,
      :post_id => 1,
      :descricao => "MyString"
    ).as_new_record)
  end

  it "renders new categoria form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => categorias_path, :method => "post" do
      assert_select "input#categoria_post_id", :name => "categoria[post_id]"
      assert_select "input#categoria_descricao", :name => "categoria[descricao]"
    end
  end
end
