class Overtime < ActiveRecord::Base
	belongs_to :user
end

# overetime statuses
# 0 - added
# 1 - sent for approval
# 2 - approved
# 3 - reejcted