require "multicable/version"

ActionCable::Server::Base.class_eval do
  def broadcast_multiple(broadcastings, message, coder: ActiveSupport::JSON)
    broadcastings.each do |broadcasting|
      broadcast(broadcasting, message, coder: coder)
    end
  end
end
