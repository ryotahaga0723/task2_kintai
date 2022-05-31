class AsyncLogJob < ApplicationJob
  queue_as :mailers
end