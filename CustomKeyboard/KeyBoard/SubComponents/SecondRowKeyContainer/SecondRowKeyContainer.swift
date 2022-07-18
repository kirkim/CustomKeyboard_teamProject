//
//  SecondRowKeyContainer.swift
//  CustomKeyboard
//
//  Created by 김기림 on 2022/07/18.
//

import UIKit

class SecondRowKeyContainer: UIStackView {
    private let secondLineBasicKeys = BasicKeyLine(keys: ["ㅁ", "ㄴ", "ㅇ", "ㄹ", "ㅎ", "ㅗ", "ㅓ", "ㅏ", "ㅣ"])

    weak var delegate: SecondRowKeyContainerDelegate?
    
    init() {
        super.init(frame: CGRect.zero)
        
        attribute()
        layout()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SecondRowKeyContainer: BasicKeyLineDelegate {
    func tappedBasicKeyButton(unicode: Int) {
        delegate?.tappedSecondrowBasicKey(unicode: unicode)
    }
}

extension SecondRowKeyContainer {
    private func attribute() {
        secondLineBasicKeys.delegate = self
        self.axis = .horizontal
        self.distribution = .equalSpacing
    }
    
    private func layout() {
        [UIView(), secondLineBasicKeys, UIView()].forEach {
            self.addArrangedSubview($0)
        }
        secondLineBasicKeys.translatesAutoresizingMaskIntoConstraints = false
        secondLineBasicKeys.widthAnchor.constraint(equalTo: self.widthAnchor, constant: -CustomKeyBoard.Math.buttonWidth).isActive = true
    }
}