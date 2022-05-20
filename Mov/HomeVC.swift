//
//  HomeVC.swift
//  Mov
//
//  Created by AryafAlaqabali on 25/04/2022.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var muneTabeView: UITableView!
    @IBOutlet weak var contanirView: UIView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet var swipeGesture: UISwipeGestureRecognizer!
    
    
    var menu = false
    let screen = UIScreen.main.bounds
    var home = CGAffineTransform()
    
    var options: [option] = [option(title: "Home", segue: "HomeSegue"),
                             option(title: "Settings", segue: "SettingsSegue"),
                             option(title: "Profile", segue: "ProfileSegue"),
                             option(title: "Terms and Conditions", segue: "TermsSegue"),
                             option(title: "Privacy Policy", segue: "PrivacySegue")
                            ]
    
    struct option {
        var title = String()
        var segue = String()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        muneTabeView.delegate = self
        muneTabeView.dataSource = self
        muneTabeView.backgroundColor = .clear
        
        
        home = contanirView.transform
     
    }
    
    
    func showMenu() {
        
        self.contanirView.layer.cornerRadius = 40
        self.imgView.layer.cornerRadius = self.contanirView.layer.cornerRadius
        let x = screen.width * 0.8
        let originalTransform = self.contanirView.transform
        let scaledTransform = originalTransform.scaledBy(x: 0.8, y: 0.8)
            let scaledAndTranslatedTransform = scaledTransform.translatedBy(x: x, y: 0)
            UIView.animate(withDuration: 0.7, animations: {
                self.contanirView.transform = scaledAndTranslatedTransform
                
            })
        
    }
    func hideMenu() {
        
            UIView.animate(withDuration: 0.7, animations: {
                
                self.contanirView.transform = self.home
                self.contanirView.layer.cornerRadius = 0
                self.imgView.layer.cornerRadius = 0
                
            })
        
    }
    
    
    
    
    @IBAction func showMenu(_ sender: UISwipeGestureRecognizer) {
        
        print("menu interaction")
        
        if menu == false && swipeGesture.direction == .right {
            
            print("user is showing menu")
            
            showMenu()
            
            menu = true
            
        }
        
    }
    
    @IBAction func hideMenu(_ sender: Any) {
        
        if menu == true {
            
            print("user is hiding menu")
            
            hideMenu()
            
            menu = false
            
        }
        
        
    }


    
}


extension HomeVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! tableViewCell
        cell.backgroundColor = .clear
        cell.lblDescription.text = options[indexPath.row].title
        cell.lblDescription.textColor = #colorLiteral(red: 0.9990234971, green: 0.9990234971, blue: 0.9990234971, alpha: 1)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let indexPath = tableView.indexPathForSelectedRow{
            let currentCell = (tableView.cellForRow(at: indexPath) ?? UITableViewCell()) as UITableViewCell
            
            currentCell.alpha = 0.5
            UIView.animate(withDuration: 1) {
                currentCell.alpha = 1
            }
            self.parent?.performSegue(withIdentifier: options[indexPath.row].segue, sender: self)
        }
    }
    
    
}

class tableViewCell: UITableViewCell{
    @IBOutlet var lblDescription : UILabel!
}
