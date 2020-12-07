class Kitchen < ActiveHash::Base

  self.data = [
    { id: 1, name: '調理経験' },
    { id: 2, name: '未経験' },
    { id: 3, name: '1〜3年' },
    { id: 4, name: '4〜10年' },
    { id: 5, name: '10年以上' },
  ]
end
