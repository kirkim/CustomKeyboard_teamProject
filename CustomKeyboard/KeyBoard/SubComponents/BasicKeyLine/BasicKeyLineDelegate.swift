//
//  BasicKeyLineDelegate.swift
//  CustomKeyboard
//
//  Created by 김기림 on 2022/07/13.
//

import Foundation

protocol BasicKeyLineDelegate: AnyObject {
    func tappedBasicKeyButton(unicode: Int)
}
