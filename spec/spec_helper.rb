require 'bundler/setup'

require 'rails'
require 'sidekiq'
require 'sidekiq/testing'

Sidekiq::Testing.inline!
Rails.cache = ActiveSupport::Cache::MemoryStore.new

require 'async_cache'
require 'async_cache/workers/sidekiq'