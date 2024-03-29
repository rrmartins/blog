require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CategoriaController do

  # This should return the minimal set of attributes required to create a valid
  # Categorium. As you add validations to Categorium, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all categoria as @categoria" do
      categorium = Categorium.create! valid_attributes
      get :index
      assigns(:categoria).should eq([categorium])
    end
  end

  describe "GET show" do
    it "assigns the requested categorium as @categorium" do
      categorium = Categorium.create! valid_attributes
      get :show, :id => categorium.id.to_s
      assigns(:categorium).should eq(categorium)
    end
  end

  describe "GET new" do
    it "assigns a new categorium as @categorium" do
      get :new
      assigns(:categorium).should be_a_new(Categorium)
    end
  end

  describe "GET edit" do
    it "assigns the requested categorium as @categorium" do
      categorium = Categorium.create! valid_attributes
      get :edit, :id => categorium.id.to_s
      assigns(:categorium).should eq(categorium)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Categorium" do
        expect {
          post :create, :categorium => valid_attributes
        }.to change(Categorium, :count).by(1)
      end

      it "assigns a newly created categorium as @categorium" do
        post :create, :categorium => valid_attributes
        assigns(:categorium).should be_a(Categorium)
        assigns(:categorium).should be_persisted
      end

      it "redirects to the created categorium" do
        post :create, :categorium => valid_attributes
        response.should redirect_to(Categorium.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved categorium as @categorium" do
        # Trigger the behavior that occurs when invalid params are submitted
        Categorium.any_instance.stub(:save).and_return(false)
        post :create, :categorium => {}
        assigns(:categorium).should be_a_new(Categorium)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Categorium.any_instance.stub(:save).and_return(false)
        post :create, :categorium => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested categorium" do
        categorium = Categorium.create! valid_attributes
        # Assuming there are no other categoria in the database, this
        # specifies that the Categorium created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Categorium.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => categorium.id, :categorium => {'these' => 'params'}
      end

      it "assigns the requested categorium as @categorium" do
        categorium = Categorium.create! valid_attributes
        put :update, :id => categorium.id, :categorium => valid_attributes
        assigns(:categorium).should eq(categorium)
      end

      it "redirects to the categorium" do
        categorium = Categorium.create! valid_attributes
        put :update, :id => categorium.id, :categorium => valid_attributes
        response.should redirect_to(categorium)
      end
    end

    describe "with invalid params" do
      it "assigns the categorium as @categorium" do
        categorium = Categorium.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Categorium.any_instance.stub(:save).and_return(false)
        put :update, :id => categorium.id.to_s, :categorium => {}
        assigns(:categorium).should eq(categorium)
      end

      it "re-renders the 'edit' template" do
        categorium = Categorium.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Categorium.any_instance.stub(:save).and_return(false)
        put :update, :id => categorium.id.to_s, :categorium => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested categorium" do
      categorium = Categorium.create! valid_attributes
      expect {
        delete :destroy, :id => categorium.id.to_s
      }.to change(Categorium, :count).by(-1)
    end

    it "redirects to the categoria list" do
      categorium = Categorium.create! valid_attributes
      delete :destroy, :id => categorium.id.to_s
      response.should redirect_to(categoria_url)
    end
  end

end
