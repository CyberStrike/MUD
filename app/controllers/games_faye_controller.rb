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

    filter :in do
      message
      puts data
      if data?
        if data['message'] == 'hello'
          # modify message.merge!('data' => {'message' =>'Test'})
          channel.publish({message:'test'})
        else
          pass
        end
      else
        pass
      end
    end

    filter :out do
      puts "Outgoing package #{message}"
      pass
    end

  end
end