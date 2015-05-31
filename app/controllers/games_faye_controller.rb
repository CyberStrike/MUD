class GamesFayeController < FayeRails::Controller
  channel '/game/**' do

    monitor :subscribe do
      puts "Client #{client_id} subscribed to #{channel}."
    end
    monitor :unsubscribe do
      puts "Client #{client_id} unsubscribed from #{channel}."
    end
    monitor :publish do
      puts "Client #{client_id} published #{data.inspect} to #{channel}."
    end

    #
    # filter :in do
    #   if message.has_key?('subscription')
    #     id = message['subscription'].delete('/game/')
    #     @game = Game.find(id)
    #     pass
    #   end
    #   puts data
    #   if data?
    #     if data['message'] == 'hello'
    #       # modify message.merge!('data' => {'message' =>'Test'})
    #       GamesFayeController.publish(message['channel'], {message:'test'})
    #     else
    #       pass
    #     end
    #   else
    #     pass
    #   end
    # end
    #
    # filter :out do
    #   puts "Outgoing package #{message}"
    #   pass
    # end

    subscribe do
      Rails.logger.debug "Received on #{channel}: #{inspect}"
      if message['message'] == 'cool'
        c.publish({message:'yay'})
      end

    end

  end

end