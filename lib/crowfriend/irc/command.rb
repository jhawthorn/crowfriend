module Crowfriend
  module Irc
    class Command
      attr_reader :prefix, :command, :params
      def initialize line
        if line[0] == ':'
          @prefix, line = line.split(' ', 2)
          @prefix[0] = ''
        end
        line, @trailing = line.split(':', 2)
        @command, *@params = line.split(' ')
      end

      def params
        @params + Array(@trailing)
      end

      def to_s
        s = ''
        s << ":#{prefix} " if prefix
        s << ([@command] + @params).join(' ')
        s << " :#{@trailing}" if @trailing
        s
      end

      class << self
        alias :parse :new
      end
    end
  end
end
