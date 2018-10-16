# frozen_string_literal: true

if File.exist?('config/elasticsearch.yml')
  config = YAML.load_file('config/elasticsearch.yml')[Rails.env].symbolize_keys
  Elasticsearch::Model.client = Elasticsearch::Client.new(config)
end
