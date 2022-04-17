//
//  ViewController.swift
//  RetainCycle_Ex
//
//  Created by KEEN on 2022/04/17.
//

import UIKit

class ViewController: UIViewController {

  var keen: Person?
  var m1Pro: Mac?
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    createObjects()
    assignProperties()
  }

  func createObjects() {
    keen = Person(name: "Keen", mac: nil)
    m1Pro = Mac(model: "m1 Pro", owner: nil)
  
    // keen = nil
    // m1Pro = nil
  }
  
  func assignProperties() {
    keen?.mac = m1Pro
    m1Pro?.owner = keen
  
    keen = nil
    // print(m1Pro?.owner)
  }

}



// func assignProperties() {
//   // 서로를 가리키며 참조하고 있다.
//   keen?.mac = m1Pro // keen의 mac 프로퍼티는 m1Pro를 참조
//   m1Pro?.owner = keen // m1Pro의 owner 프로퍼티는 keen을 참조
//
//   keen = nil // keen을 nil값을 주어 메모리에서 해제를 해주어도 m1Pro가 아직 keen을 가리키며 참조하고 있기 떄문에 RC = 1 이다.
// }
