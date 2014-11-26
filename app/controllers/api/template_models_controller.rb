class Api::TemplateModelsController < ApplicationController

def show
	respond_to do |format|
		format.json { render :file => "/api/template_models/show.json.erb", :content_type => 'application/json' }
	end
end

end