//
//  ViewController.swift
//  TableViewControler
//
//  Created by Hebert Falcão on 22/04/2018.
//  Copyright © 2018 hebertfalcao. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var dados: [String] = ["Lasanha", "Pizza", "Torta"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dados.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        
        celula.textLabel?.text = dados[indexPath.row]

        return celula
    }

}

