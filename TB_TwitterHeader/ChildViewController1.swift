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

  override func viewDidLoad() {
    super.viewDidLoad()

    NotificationCenter.default.addObserver(self, selector: #selector(ChildViewController1.canScroll), name: Notification.Name("CANSCROLL"), object: nil)
  }

  func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
    return IndicatorInfo(title: "Tweets")
  }

  func canScroll() {
    tableView.isScrollEnabled = true
  }

  func scrollViewDidScroll(_ scrollView: UIScrollView) {
    let offset = scrollView.contentOffset.y

    if offset < 0 {
      tableView.isScrollEnabled = false
    }
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
