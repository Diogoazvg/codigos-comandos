json.array!(@commands) do |command|
  json.extract! command, :id, :name, :command, :description, :category_id
  json.url command_url(command, format: :json)
end
