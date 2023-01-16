//
//  ViewController.swift
//  tableView
//
//  Created by Anelya Kabyltayeva on 13.01.2023.
//

import UIKit
import SnapKit
final class ViewController: UIViewController {
    
    private var myItems: [[String]] = [["Milk Lactel 3.2%", "Sour cream President 20%,400g","Butter President 82%, 180g","Cottage cheese President 5%, 450g"],["Lemon, kg", "Cucumber, kg"], ["Tea Piala Gold 25 packs", "Coffee Jacobs Monarch 75g", "Cocoa powder Rahat 100g"], ["Sliced loaf 350g", "Black bread 450 g "]]
    private var myTitles: [String] = ["Milk products", "Vegetables,fruits","Tea,coffee", "Bakery products,bread"]
    
    private var myPrices: [[String]] = [["649", "844", "927", "858"], ["1098", "1999"], ["339", "2095", "319"], ["220, 180"]]
    
    private  var myImage:  [[String]] = [["lactel3.2","sourcream","butter","cheese"],["lemon", "cucumber"], ["piala","jacobs", "cacao"], ["bread", "breadb"]]
    
    private lazy var myTableView:UITableView = {
        let tableView = UITableView()
        tableView.register(MyTableViewCell.self, forCellReuseIdentifier: MyTableViewCell.IDENTIFIER)
        tableView.backgroundColor = .white
        return tableView
    }()
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        view.backgroundColor = .white
        
        myTableView.dataSource = self
        myTableView.delegate = self
        
        setupViews()
        setupConstraints()
    }


}
//MARK: - Table view data source  methods

extension ViewController:UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return myTitles.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return myTitles[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myItems[section].count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.IDENTIFIER, for: indexPath) as! MyTableViewCell
        cell.setProduct(with: "\(indexPath.row + 1).\(myItems[indexPath.section][indexPath.row])")
        //cell.setPrice(with: "The sum is:\(myPrices[indexPath.section][indexPath.row])")
        cell.setImage(with: "\(myImage[indexPath.section][indexPath.row])")
        cell.backgroundColor = .clear
        return cell
    }
   
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}

//MARK: - Setup views and constraints methods

private extension ViewController {
   
    func setupViews(){
        view.addSubview(myTableView)
    }
    
    func setupConstraints(){
        myTableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.trailing.equalToSuperview().inset(15)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
        
    }
    
}

