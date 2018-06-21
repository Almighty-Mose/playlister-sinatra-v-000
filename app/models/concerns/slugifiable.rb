module Slugifiable
  module InstanceMethods
    def slug
      name.gsub(" ", "-").downcase
    end
  end

  module ClassMethods
    
  end
end