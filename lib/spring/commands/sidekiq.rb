module Spring
  module Commands
    class Sidekiq
      def env(*)
        "test"
      end

      def exec_name
        "sidekiq"
      end

      def gem_name
        "sidekiq"
      end
    end

    Spring.register_command "sidekiq", Sidekiq.new
    Spring::Commands::Rake.environment_matchers[/^spec($|:)/] = "test"
  end
end
