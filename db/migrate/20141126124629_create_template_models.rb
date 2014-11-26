class CreateTemplateModels < ActiveRecord::Migration
  def change
    create_table :template_models do |t|
      t.string :text

      t.timestamps
    end
  end
end
