class Post < ApplicationRecord
  searchkick stem_exclusion: ["uniting"]
end
