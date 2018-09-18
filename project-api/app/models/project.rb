class Project < ApplicationRecord
    def wasLiked
        self.like += 1
    end
end
