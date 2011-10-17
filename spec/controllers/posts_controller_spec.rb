require 'spec_helper'

describe PostsController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

    it "POST create, deveria criar post" do
      @post = Post.new
      @post.titulo = "Titulo"
      @post.chamada = "Chamada"
      @post.texto = "Texto"
      post :create, :post => @post
      response.should be_success
    end

    it " show should be successful" do
      get :show, :id => 1
      response.should be_success
    end
    
    
  
  it "uma instancia" do
    controller.should be_an_instance_of(PostsController)
  end  

end
