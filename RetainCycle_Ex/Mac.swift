//
//  Mac.swift
//  RetainCycle_Ex
//
//  Created by KEEN on 2022/04/17.
//

import Foundation

class Mac {
  let model: String
  weak var owner: Person?
  
  init(model: String, owner: Person?) {
    self.model = model
    self.owner = owner
  }
  
  deinit {
    print("Mac - \(model) is being deinitialized.")
  }
}
