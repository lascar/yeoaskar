require 'rails_helper'

# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ElementsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Element. As you add validations to Element, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ElementsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all elements as @elements" do
      element = Element.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:elements)).to eq([element])
    end
  end

  describe "GET show" do
    it "assigns the requested element as @element" do
      element = Element.create! valid_attributes
      get :show, {:id => element.to_param}, valid_session
      expect(assigns(:element)).to eq(element)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Element" do
        expect {
          post :create, {:element => valid_attributes}, valid_session
        }.to change(Element, :count).by(1)
      end

      it "assigns a newly created element as @element" do
        post :create, {:element => valid_attributes}, valid_session
        expect(assigns(:element)).to be_a(Element)
        expect(assigns(:element)).to be_persisted
      end

      it "redirects to the created element" do
        post :create, {:element => valid_attributes}, valid_session
        expect(response).to redirect_to(Element.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved element as @element" do
        post :create, {:element => invalid_attributes}, valid_session
        expect(assigns(:element)).to be_a_new(Element)
      end

      it "re-renders the 'new' template" do
        post :create, {:element => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested element" do
        element = Element.create! valid_attributes
        put :update, {:id => element.to_param, :element => new_attributes}, valid_session
        element.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested element as @element" do
        element = Element.create! valid_attributes
        put :update, {:id => element.to_param, :element => valid_attributes}, valid_session
        expect(assigns(:element)).to eq(element)
      end

      it "redirects to the element" do
        element = Element.create! valid_attributes
        put :update, {:id => element.to_param, :element => valid_attributes}, valid_session
        expect(response).to redirect_to(element)
      end
    end

    describe "with invalid params" do
      it "assigns the element as @element" do
        element = Element.create! valid_attributes
        put :update, {:id => element.to_param, :element => invalid_attributes}, valid_session
        expect(assigns(:element)).to eq(element)
      end

      it "re-renders the 'edit' template" do
        element = Element.create! valid_attributes
        put :update, {:id => element.to_param, :element => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested element" do
      element = Element.create! valid_attributes
      expect {
        delete :destroy, {:id => element.to_param}, valid_session
      }.to change(Element, :count).by(-1)
    end

    it "redirects to the elements list" do
      element = Element.create! valid_attributes
      delete :destroy, {:id => element.to_param}, valid_session
      expect(response).to redirect_to(elements_url)
    end
  end

end
