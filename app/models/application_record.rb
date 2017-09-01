class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  private

    def benchmark
      puts "*** Setting start time"
      start_time = Time.now
      yield
      puts "*** Setting end time"
      end_time = Time.now
      puts "*** Process took #{end_time - start_time} seconds"
    end
    
end
