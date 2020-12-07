class Genre < ActiveHash::Base

  self.data = [
    { id: 0, name: '求人ジャンル' },
    { id: 1, name: 'キッチン' },
    { id: 2, name: 'ホール' },
  ]
end
