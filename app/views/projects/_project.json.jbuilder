json.extract! project, :id, :name, :web_app, :mobile_app, :due_date, :created_at, :updated_at
json.url project_url(project, format: :json)