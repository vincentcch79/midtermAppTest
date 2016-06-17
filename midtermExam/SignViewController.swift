//
//  SignViewController.swift
//  midtermExam
//
//  Created by 張智涵 on 2016/6/17.
//  Copyright © 2016年 張智涵 Vincent Chang. All rights reserved.
//

import UIKit

class SignViewController: UIViewController {
    
   
    
    @IBOutlet weak var signField: UITextField!
    
    @IBOutlet weak var signBoard: UILabel!

    
    var signArr:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func signButton(sender: AnyObject) {
        
        
        signBoard.text = signField.text
        let signString = signBoard.text
  
        
        
        
        if (signString?.characters)!.count == 0 {
            print("you should type something")
            let alert = UIAlertController(title: "請輸入你的簽名", message: nil, preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            return
        }
    
        signField.text = ""
        signArr.append(signString!)
        
        signBoard.text = "\(signArr.joinWithSeparator("\n"))"
        
        if signArr.count > 3 {
            print("you are typing more than three times")
            let alert = UIAlertController(title: "不可以簽超過三個人", message: nil, preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            signArr.removeAtIndex(3)
            signField.text = ""
            signBoard.text = "" 
            return
        }
        
    }
    
    
    
    
    
    
}
