json.array!(@template_models) do |template_model|
  json.extract! template_model, :id, :text
  json.url template_model_url(template_model, format: :json)
end
