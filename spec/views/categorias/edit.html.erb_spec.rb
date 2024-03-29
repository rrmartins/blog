require 'spec_helper'

describe "categorias/edit.html.erb" do
  before(:each) do
    @categoria = assign(:categoria, stub_model(Categoria,
      :post_id => 1,
      :descricao => "MyString"
    ))
  end

  it "renders the edit categoria form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => categorias_path(@categoria), :method => "post" do
      assert_select "input#categoria_post_id", :name => "categoria[post_id]"
      assert_select "input#categoria_descricao", :name => "categoria[descricao]"
    end
  end
end
