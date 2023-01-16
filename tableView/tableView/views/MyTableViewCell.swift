//
//  MyTableViewCell.swift
//  tableView
//
//  Created by Anelya Kabyltayeva on 13.01.2023.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    static let IDENTIFIER = "MyTableViewCell"
    
    
    private lazy var myProduct: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        return label
        
    }()
    private lazy var myPrice: UILabel = {
            let label = UILabel()
            label.textColor = .red
            label.font = UIFont.systemFont(ofSize: 12)
            return label
    }()
    private lazy var someView: UIView = {
        let view = UIView()
        view.addSubview(myProduct)
        view.addSubview(myPrice)
        
        myProduct.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.width.equalToSuperview()
            make.leading.trailing.equalToSuperview()
        }
        myPrice.snp.makeConstraints { make in
            make.top.equalTo(myProduct.snp.bottom)
            make.leading.trailing.bottom.equalToSuperview()
            make.width.equalToSuperview()
        }
        return view
    }()
    
    private lazy var myImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "trash")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
       
        setupViews()
        setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setPrice(with string:String){
        myPrice.text = string
    }
    func setProduct(with string: String) {
        myProduct.text = string
        }
    func setImage(with string: String) {
        myImage.image = UIImage(named: string)
       }
    
}

//MARK: - Setup views and constraints methods

private extension MyTableViewCell{
    
    func setupViews (){
        contentView.addSubview(someView)
        contentView.addSubview(myImage)
        

    }
    
    func setupConstraints(){
        someView.snp.makeConstraints { make in
            make.top.leading.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.7)
        }
        myImage.snp.makeConstraints { make in
            make.top.trailing.bottom.equalToSuperview()
            make.leading.equalTo(someView.snp.trailing)
            make.height.equalToSuperview()
        }
        
    }
    
}
