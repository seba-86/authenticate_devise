class Story < ApplicationRecord
    belongs_to :user

    def name_user
        user.name
    end
end
