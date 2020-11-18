class LongTaskWorker
  include Sidekiq::Worker

  def perform(owner_email)
    
  end
end
