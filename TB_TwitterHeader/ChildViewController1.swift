//
//  ChildViewController1.swift
//  TB_TwitterHeader
//
//  Created by Chonnawee Chatcherthaicharoen on 9/12/2560 BE.
//  Copyright © 2560 Bitwaker. All rights reserved.
//

import Foundation
import XLPagerTabStrip

let cellIdentifier = "cell"

class ChildViewController1: UIViewController, IndicatorInfoProvider {

  @IBOutlet weak var tableView: UITableView!

  func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
    return IndicatorInfo(title: "Tweets")
  }

}

extension ChildViewController1: UITableViewDelegate, UITableViewDataSource {
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) ?? UITableViewCell(style: .subtitle, reuseIdentifier: cellIdentifier)

    cell.textLabel?.text = "Label \(indexPath.row)"

    return cell
  }
}
