class TemplateModelsController < ApplicationController
  before_action :set_template_model, only: [:show, :edit, :update, :destroy]

  # GET /template_models
  # GET /template_models.json
  def index
    @template_models = TemplateModel.all
  end

  # GET /template_models/1
  # GET /template_models/1.json
  def show
  end

  # GET /template_models/new
  def new
    @template_model = TemplateModel.new
  end

  # GET /template_models/1/edit
  def edit
  end

  # POST /template_models
  # POST /template_models.json
  def create
    @template_model = TemplateModel.new(template_model_params)

    respond_to do |format|
      if @template_model.save
        format.html { redirect_to @template_model, notice: 'Template model was successfully created.' }
        format.json { render :show, status: :created, location: @template_model }
      else
        format.html { render :new }
        format.json { render json: @template_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /template_models/1
  # PATCH/PUT /template_models/1.json
  def update
    respond_to do |format|
      if @template_model.update(template_model_params)
        format.html { redirect_to @template_model, notice: 'Template model was successfully updated.' }
        format.json { render :show, status: :ok, location: @template_model }
      else
        format.html { render :edit }
        format.json { render json: @template_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /template_models/1
  # DELETE /template_models/1.json
  def destroy
    @template_model.destroy
    respond_to do |format|
      format.html { redirect_to template_models_url, notice: 'Template model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template_model
      @template_model = TemplateModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def template_model_params
      params.require(:template_model).permit(:text)
    end
end
