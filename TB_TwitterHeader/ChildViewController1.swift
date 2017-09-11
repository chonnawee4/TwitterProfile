//
//  ChildViewController1.swift
//  TB_TwitterHeader
//
//  Created by Chonnawee Chatcherthaicharoen on 9/12/2560 BE.
//  Copyright © 2560 Bitwaker. All rights reserved.
//

import Foundation
import XLPagerTabStrip

class ChildViewController1: UIViewController, IndicatorInfoProvider {

  func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
    return IndicatorInfo(title: "Tweets")
  }

}
