class Target < ActiveRecord::Base
	enum team: {allies:0, enemies:1, everyone:2}
	enum affected: {myself:1, adjacent:2, full_team:0}
end
