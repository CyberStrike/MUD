module RocketHelper
      def message_rocket_include_tag
        [message_rocket_public_key_meta_tag,
            message_rocket_uri_meta_tag,
            message_rocket_javascript_tag
        ].join("\n").html_safe
      end
    #
    # def message_rocket_public_key_meta_tag
    #   "<meta name=\"messagerocket-public-key\" value=\"#{ENV['MESSAGEROCKET_PKEY']}\">"
    # end
    #
    # def message_rocket_uri_meta_tag
    #   "<meta name=\"messagerocket-uri\" value=\"#{ENV['MESSAGEROCKET_URL']}\">"
    # end
    #
    # def message_rocket_javascript_tag
    #   "<script src=\"https://messagerocket.co/messagerocket.js\"></script>"
    # end
    #

    def message_rocket_include_tag
      [message_rocket_public_key_meta_tag,
       message_rocket_uri_meta_tag,
       message_rocket_javascript_tag
      ].join("\n").html_safe
    end

    def message_rocket_public_key_meta_tag
      tag('meta', name: 'messagerocket-public-key', content: ENV['MESSAGEROCKET_PKEY'])
    end

    def message_rocket_uri_meta_tag
      tag('meta', name: 'messagerocket-uri', content: ENV['MESSAGEROCKET_URL'])
    end

    def message_rocket_javascript_tag
      content_tag(:script, '', src:'https://messagerocket.co/messagerocket.js')
    end
end