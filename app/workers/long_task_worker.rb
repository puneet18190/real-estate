class LongTaskWorker
  include Sidekiq::Worker

  def perform(owner_email)
    UserMailer.owner_mail(owner_email).deliver
  end
end
