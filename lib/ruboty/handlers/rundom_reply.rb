require 'yaml'
module Ruboty
  module Handlers
    class RundomReply < Base
      class << self
        def template
          template_path = ENV["REPLY_TEMPLATE_PATH"] || './rundom.yaml'
          @template ||= YAML.load_file(template_path)
        end

        def pattern(type)
          "(?<key>#{self.template[type].keys.join('|')})"
        end
      end

      on(
        /#{pattern('reply_all')}/,
        description: "rundom answer for all message",
        name: "reply_all",
        all:true
      )

      on(
        /#{pattern('reply')}/,
        description: "rundom answer for reply only",
        name: "reply"
      )

      on(
        /#{pattern('repeat_all')}/,
        description: "rundom answer and repeat for all message ",
        name: "repeat_all",
        all:true
      )

      on(
        /#{pattern('repeat')}/,
        description: "rundom answer and repeat for relpy only",
        name: "repeat"
      )

      def answer(type: type, key: key)
        self.class.template[type][key].sample
      end

      def reply_all(message)
        message.reply(answer(type:'reply_all', key: message[:key]), type: :privmsg)
      end

      def reply(message)
        message.reply(answer(type: 'reply', key: message[:key]))
      end

      def repeat_all(message)
        message.reply("#{ answer(type: 'repeat_all', key: message[:key]) }: #{ message.body }", type: :privmsg)
      end

      def repeat(message)
        message.reply("#{ answer(type: 'repeat', key: message[:key]) }: #{ message.body }")
      end
    end
  end
end
