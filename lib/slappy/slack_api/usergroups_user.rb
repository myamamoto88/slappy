module Slappy
  module SlackAPI
    class UsergroupsUser < Base
      self.monitor_event = []
      self.list_name = 'users'

      class << self
        def convert(result)
          new("#{list_name}": result[list_name])
        end
      end
    end
  end
end
