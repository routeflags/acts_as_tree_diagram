# frozen_string_literal: true

Animal.create!([
                 { name: '1', parent_id: nil },
                 { name: '2', parent_id: 1 },
                 { name: '3', parent_id: 1 },
                 { name: '4', parent_id: 3 },
                 { name: '5', parent_id: 3 },
                 { name: '6', parent_id: 5 }
               ])
