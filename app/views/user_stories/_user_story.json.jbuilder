json.extract! user_story, :id, :as_a, :i_want_to, :so_that_i, :projects_id, :created_at, :updated_at
json.url user_story_url(user_story, format: :json)