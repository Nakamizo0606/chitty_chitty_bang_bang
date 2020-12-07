class Sex < ActiveHash::Base
  self.data = [
    { id: 0, name: '性別' },
    { id: 1, name: '男' },
    { id: 2, name: '女' },
  ]
end

