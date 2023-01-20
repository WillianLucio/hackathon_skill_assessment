class Notification
  def initialize; end

  def notify
    Email.new.send
    Whatsapp.new.send
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

class Whatsapp < Notifyer
  def send; end
end

Notification.new.notify