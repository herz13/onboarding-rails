class FetchDataJob < ApplicationJob
  repeat 'every day at 8am'

  def perform(*args)
    # Do something later
  end
end
