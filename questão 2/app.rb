class Notification
  def initialize(strategy)
    @strategy = strategy
  end

  def notify
    @strategy.send
  end
end

class Notifyer
  def send
    raise 'Not implemented yet'
  end
end

class Email < Notifyer
  def send; end
end

Notification.new(Email.new).notify