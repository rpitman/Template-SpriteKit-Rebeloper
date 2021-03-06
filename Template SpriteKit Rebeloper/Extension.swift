//
//  Extension.swift
//  Template SpriteKit Rebeloper
//
//  Created by ronnie on 4/5/18.
//  Copyright © 2018 space.c-flat. All rights reserved.
//

import UIKit

enum UIUserInterfaceIdiom: Int {
  case undefined
  case phone
  case pad
}

struct ScreenSize {
  static let width = UIScreen.main.bounds.size.width
  static let heigth = UIScreen.main.bounds.size.height
  static let maxLength = max(ScreenSize.width, ScreenSize.heigth)
  static let minLength = min(ScreenSize.width, ScreenSize.heigth)
}

struct DeviceType {
  static let isiPhone4OrLess = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength < 568.0
  static let isiPhone5 = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 568.0
  static let isiPhone6 = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 667.0
  static let isiPhone6Plus = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 736.0
  static let isiPhoneX = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 812.0
  static let isiPad = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.maxLength == 1024.0
  static let isiPadPro = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.maxLength == 1366.0
}
