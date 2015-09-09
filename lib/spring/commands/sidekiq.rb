module Spring
  module Commands
    class Sidekiq
      def env(args)
        environment = "development"

        args = args.select.with_index { |arg, i|
          case arg
          when "-e"
            false
          when /--environment=(\w+)/
            environment = $1
            false
          else
            if i > 0 && args[i - 1] == "-e"
              environment = arg
              false
            else
              true
            end
          end
        }

        environment
      end

      def exec_name
        "sidekiq"
      end

      def gem_name
        "sidekiq"
      end
    end

    Spring.register_command "sidekiq", Sidekiq.new
  end
end
