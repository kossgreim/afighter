require 'rails_helper'

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

RSpec.describe RecordTypesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # RecordType. As you add validations to RecordType, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RecordTypesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all record_types as @record_types" do
      record_type = RecordType.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:record_types)).to eq([record_type])
    end
  end

  describe "GET #show" do
    it "assigns the requested record_type as @record_type" do
      record_type = RecordType.create! valid_attributes
      get :show, {:id => record_type.to_param}, valid_session
      expect(assigns(:record_type)).to eq(record_type)
    end
  end

  describe "GET #new" do
    it "assigns a new record_type as @record_type" do
      get :new, {}, valid_session
      expect(assigns(:record_type)).to be_a_new(RecordType)
    end
  end

  describe "GET #edit" do
    it "assigns the requested record_type as @record_type" do
      record_type = RecordType.create! valid_attributes
      get :edit, {:id => record_type.to_param}, valid_session
      expect(assigns(:record_type)).to eq(record_type)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new RecordType" do
        expect {
          post :create, {:record_type => valid_attributes}, valid_session
        }.to change(RecordType, :count).by(1)
      end

      it "assigns a newly created record_type as @record_type" do
        post :create, {:record_type => valid_attributes}, valid_session
        expect(assigns(:record_type)).to be_a(RecordType)
        expect(assigns(:record_type)).to be_persisted
      end

      it "redirects to the created record_type" do
        post :create, {:record_type => valid_attributes}, valid_session
        expect(response).to redirect_to(RecordType.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved record_type as @record_type" do
        post :create, {:record_type => invalid_attributes}, valid_session
        expect(assigns(:record_type)).to be_a_new(RecordType)
      end

      it "re-renders the 'new' template" do
        post :create, {:record_type => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested record_type" do
        record_type = RecordType.create! valid_attributes
        put :update, {:id => record_type.to_param, :record_type => new_attributes}, valid_session
        record_type.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested record_type as @record_type" do
        record_type = RecordType.create! valid_attributes
        put :update, {:id => record_type.to_param, :record_type => valid_attributes}, valid_session
        expect(assigns(:record_type)).to eq(record_type)
      end

      it "redirects to the record_type" do
        record_type = RecordType.create! valid_attributes
        put :update, {:id => record_type.to_param, :record_type => valid_attributes}, valid_session
        expect(response).to redirect_to(record_type)
      end
    end

    context "with invalid params" do
      it "assigns the record_type as @record_type" do
        record_type = RecordType.create! valid_attributes
        put :update, {:id => record_type.to_param, :record_type => invalid_attributes}, valid_session
        expect(assigns(:record_type)).to eq(record_type)
      end

      it "re-renders the 'edit' template" do
        record_type = RecordType.create! valid_attributes
        put :update, {:id => record_type.to_param, :record_type => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested record_type" do
      record_type = RecordType.create! valid_attributes
      expect {
        delete :destroy, {:id => record_type.to_param}, valid_session
      }.to change(RecordType, :count).by(-1)
    end

    it "redirects to the record_types list" do
      record_type = RecordType.create! valid_attributes
      delete :destroy, {:id => record_type.to_param}, valid_session
      expect(response).to redirect_to(record_types_url)
    end
  end

end
