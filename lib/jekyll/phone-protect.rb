module Jekyll
  module PhoneProtect
    module PhoneProtectionFilter

      # Percent-encode alphanumeric characters of an phone address
      def encode_phone(input)
        input.to_s.chars.inject(String.new) do |result, char|
          if char =~ /\p{Alnum}/
            char.bytes.inject(result) do |result, byte|
              result << '%%%02X' % byte
            end
          else
            result << char
          end
        end
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::PhoneProtect::PhoneProtectionFilter)
