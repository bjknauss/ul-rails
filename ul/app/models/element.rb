class Element < ActiveRecord::Base
	enum stat: {atk:0,matk:1,def:2, mdef:3}
end
