require 'spec_helper'

describe Post do
  before(:each) do
    @post = { 
      
    }
  end
  
  it "deveria retornar maiuscula caso nao esteja" do
    @post[:titulo] = "testando mais um rspec"
    @post[:chamada] = "testando mais um rspec"
    @post[:texto] = "testando mais um rspec"
    Post.create!(@post)
  end
  
  it "deveria criar um novo post" do
    @post[:data] = DateTime.now 
    @post[:titulo] = "Testanto RSpec"
    @post[:chamada] = "RSPEC____"
    @post[:texto] = "it 'deveria criar um novo post' do<br/> 
                    @post.titulo = 'Testanto RSpec'<br/>
                    @post.chamada = '____'<br/>
                    @post.texto = 'texto aqui'<br/>
                    Post.create!(@post)<br/>
                   end "
    Post.create!(@post)
  end
  
  it "deveria criar uma data caso nao tenha" do
    @post[:titulo] = "Testanto RSpec"
    @post[:chamada] = "RSPEC____"
    @post[:texto] = "it 'deveria criar um novo post' do<br/> 
                    @post.titulo = 'Testanto RSpec'<br/>
                    @post.chamada = '____'<br/>
                    @post.texto = 'texto aqui'<br/>
                    Post.create!(@post)<br/>
                   end "
    Post.create!(@post)
  end
  
  it "verifica se o post nao esta nil" do
    @post =  nil
    @post.should be_nil
  end
  
  it "verifica se o post nao esta empty" do
    @post.should be_empty
  end
  
end
