//
//  Persokn.swift
//  RetainCycle_Ex
//
//  Created by KEEN on 2022/04/17.
//

import Foundation

class Person {
  let name: String
  var mac: Mac?
  
  init(name: String, mac: Mac?) {
    self.name = name
    self.mac = mac
  }
  
  deinit {
    print("Person - \(name) is being deinitialized.")
  }
}
