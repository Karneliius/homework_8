//
//  ViewController.swift
//  homework_8
//
//  Created by Anelya Kabyltayeva on 05.01.2023.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    private lazy var partZero:UIView = {
         let view = UIView()
        view.backgroundColor = .black
         return view
     }()
    private lazy var myButtonC: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("C", for: .normal)
        return button
    }()
    
    private lazy var myButtonSign: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("+/-", for: .normal)
        return button
    }()
    
    private lazy var myButtonPercent: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("%", for: .normal)
        return button
    }()
    
    private lazy var myButtonDiv: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemOrange
        button.setTitle("/", for: .normal)
        return button
    }()
    private lazy var myButtonSeven: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("7", for: .normal)
        return button
    }()
    
    private lazy var myButtonEight: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("8", for: .normal)
        return button
    }()
    
    private lazy var myButtonNine: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("9", for: .normal)
        return button
    }()
    
    private lazy var myButtonMul: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemOrange
        button.setTitle("*", for: .normal)
        return button
    }()
    private lazy var myButtonFour: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("4", for: .normal)
        return button
    }()
    private lazy var myButtonFive: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("5", for: .normal)
        return button
    }()
    private lazy var myButtonSix: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("6", for: .normal)
        return button
    }()
    private lazy var myButtonMinus: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemOrange
        button.setTitle("-", for: .normal)
        return button
    }()
    private lazy var myButtonOne: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("1", for: .normal)
        return button
    }()
    private lazy var myButtonTwo: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("2", for: .normal)
        return button
    }()
    private lazy var myButtonThree: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("3", for: .normal)
        return button
    }()
    private lazy var myButtonPlus: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemOrange
        button.setTitle("+", for: .normal)
        return button
    }()
    private lazy var myButtonZero: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("0", for: .normal)
        button.contentHorizontalAlignment = .left
        return button
    }()
    private lazy var myButtonComma: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle(",", for: .normal)
        return button
    }()
    private lazy var myButtonEqual: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemOrange
        button.setTitle("=", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
        setupConstraints()
    }
}

// MARK: - Setup views and constraints method
private extension ViewController {
    func setupViews (){
        view.addSubview(partZero)
        view.addSubview(myButtonC)
        view.addSubview(myButtonSign)
        view.addSubview(myButtonPercent)
        view.addSubview(myButtonDiv)
        view.addSubview(myButtonSeven)
        view.addSubview(myButtonEight)
        view.addSubview(myButtonNine)
        view.addSubview(myButtonMul)
        view.addSubview(myButtonFour)
        view.addSubview(myButtonFive)
        view.addSubview(myButtonSix)
        view.addSubview(myButtonMinus)
        view.addSubview(myButtonOne)
        view.addSubview(myButtonTwo)
        view.addSubview(myButtonThree)
        view.addSubview(myButtonPlus)
        view.addSubview(myButtonZero)
        view.addSubview(myButtonComma)
        view.addSubview(myButtonEqual)
    }
    
    func setupConstraints (){
        partZero.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(3)
        }
        myButtonC.snp.makeConstraints { make in
            make.top.equalTo(partZero.snp.bottom)
            make.leading.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        myButtonSign.snp.makeConstraints { make in
            make.top.equalTo(partZero.snp.bottom)
            make.leading.equalTo(myButtonC.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        myButtonPercent.snp.makeConstraints { make in
            make.top.equalTo(partZero.snp.bottom)
            make.leading.equalTo(myButtonSign.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        myButtonDiv.snp.makeConstraints { make in
            make.top.equalTo(partZero.snp.bottom)
            make.leading.equalTo(myButtonPercent.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        myButtonSeven.snp.makeConstraints { make in
            make.top.equalTo(myButtonC.snp.bottom)
            make.leading.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        myButtonEight.snp.makeConstraints { make in
            make.top.equalTo(myButtonSign.snp.bottom)
            make.leading.equalTo(myButtonSeven.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        myButtonNine.snp.makeConstraints { make in
            make.top.equalTo(myButtonPercent.snp.bottom)
            make.leading.equalTo(myButtonEight.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        myButtonMul.snp.makeConstraints { make in
            make.top.equalTo(myButtonDiv.snp.bottom)
            make.leading.equalTo(myButtonNine.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        myButtonFour.snp.makeConstraints { make in
            make.top.equalTo(myButtonSeven.snp.bottom)
            make.leading.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        myButtonFive.snp.makeConstraints { make in
            make.top.equalTo(myButtonEight.snp.bottom)
            make.leading.equalTo(myButtonFour.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        myButtonSix.snp.makeConstraints { make in
            make.top.equalTo(myButtonNine.snp.bottom)
            make.leading.equalTo(myButtonFive.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        myButtonMinus.snp.makeConstraints { make in
            make.top.equalTo(myButtonMul.snp.bottom)
            make.leading.equalTo(myButtonSix.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        myButtonOne.snp.makeConstraints { make in
            make.top.equalTo(myButtonFour.snp.bottom)
            make.leading.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        myButtonTwo.snp.makeConstraints { make in
            make.top.equalTo(myButtonFive.snp.bottom)
            make.leading.equalTo(myButtonOne.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        myButtonThree.snp.makeConstraints { make in
            make.top.equalTo(myButtonSix.snp.bottom)
            make.leading.equalTo(myButtonTwo.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        myButtonPlus.snp.makeConstraints { make in
            make.top.equalTo(myButtonMinus.snp.bottom)
            make.leading.equalTo(myButtonThree.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        myButtonZero.snp.makeConstraints { make in
            make.top.equalTo(myButtonOne.snp.bottom)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.leading.equalToSuperview()
            make.width.equalToSuperview().dividedBy(2)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        myButtonComma.snp.makeConstraints { make in
            make.top.equalTo(myButtonThree.snp.bottom)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.leading.equalTo(myButtonZero.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        myButtonEqual.snp.makeConstraints { make in
            make.top.equalTo(myButtonPlus.snp.bottom)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.leading.equalTo(myButtonComma.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
        }
        
        
        
        
    }
}
