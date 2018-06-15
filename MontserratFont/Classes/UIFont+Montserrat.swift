//  UIFont+MontserratFont.swift
//  MontserratFont
//
//  Created by CJ Zeiger on 6/15/2018.
//  Copyright © 2018 CJ Zeiger. All rights reserved.
//

import UIKit
import CoreText

/**
 Fake class required for Font bundle loading.
 */
class MontserratFontFakeClass {

}

let fonts: [String] = [
    "Montserrat-Hairline",
    "Montserrat-HairlineItalic",
    "Montserrat-Light",
    "Montserrat-LightItalic",
    "Montserrat-Regular",
    "Montserrat-Italic",
    "Montserrat-Bold",
    "Montserrat-BoldItalic",
    "Montserrat-Black",
    "Montserrat-BlackItalic",
    "Montserrat-ExtraBold",
    "Montserrat-ExtraBoldItalic",
    "Montserrat-Medium",
    "Montserrat-MediumItalic",
    "Montserrat-SemiBold",
    "Montserrat-SemiBoldItalic"

]

func fontInit()
{
    let podBundle = Bundle(for: MontserratFontFakeClass.self)
    if let bundleURL = podBundle.url(forResource: "MontserratFont", withExtension: "bundle") {
        if let bundle = Bundle(url: bundleURL) {

            for font in fonts {
                let url = bundle.url(forResource: font, withExtension: "ttf")

                if (url != nil) {
                    var errorRef: Unmanaged<CFError>?
                    CTFontManagerRegisterFontsForURL(url! as CFURL, .none, &errorRef)
                }
            }
        }
    }
}

extension UIFont {

    /**
     Returns Montserrat font with hairline style.

     - parameter size: size of the font
     */
    public class func montserratHairline(size: CGFloat) -> UIFont! {
        fontInit()
        return UIFont.init(name: fonts[0], size: size);
    }

    /**
     Returns Montserrat font with hairline italic style.

     - parameter size: size of the font
     */
    public class func montserratHairlineItalic(size: CGFloat) -> UIFont! {
        fontInit()
        return UIFont.init(name: fonts[1], size: size);
    }

    /**
     Returns Montserrat font with light style.

     - parameter size: size of the font
     */
    public class func montserratLight(size: CGFloat) -> UIFont! {
        fontInit()
        return UIFont.init(name: fonts[2], size: size);
    }

    /**
     Returns Montserrat font with light italic style.

     - parameter size: size of the font
     */
    public class func montserratLightItalic(size: CGFloat) -> UIFont! {
        fontInit()
        return UIFont.init(name: fonts[3], size: size);
    }

    /**
     Returns Montserrat font with montserrat style.

     - parameter size: size of the font
     */
    public class func montserrat(size: CGFloat) -> UIFont! {
        fontInit()
        return UIFont.init(name: fonts[4], size: size);
    }

    /**
     Returns Montserrat font with italic style.

     - parameter size: size of the font
     */
    public class func montserratItalic(size: CGFloat) -> UIFont! {
        fontInit()
        return UIFont.init(name: fonts[5], size: size);
    }

    /**
     Returns Montserrat font with bold style.

     - parameter size: size of the font
     */
    public class func montserratBold(size: CGFloat) -> UIFont! {
        fontInit()
        return UIFont.init(name: fonts[6], size: size);
    }

    /**
     Returns Montserrat font with bold italic style.

     - parameter size: size of the font
     */
    public class func montserratBoldItalic(size: CGFloat) -> UIFont! {
        fontInit()
        return UIFont.init(name: fonts[7], size: size);
    }

    /**
     Returns Montserrat font with black style.

     - parameter size: size of the font
     */
    public class func montserratBlack(size: CGFloat) -> UIFont! {
        fontInit()
        return UIFont.init(name: fonts[8], size: size);
    }

    /**
     Returns Montserrat font with black italic style.

     - parameter size: size of the font
     */
    public class func montserratBlackItalic(size: CGFloat) -> UIFont! {
        fontInit()
        return UIFont.init(name: fonts[9], size: size);
    }

    /**
     Returns Montserrat font with extra bold style.

     - parameter size: size of the font
     */
    public class func montserratExtraBold(size: CGFloat) -> UIFont! {
        fontInit()
        return UIFont.init(name: fonts[10], size: size);
    }

    /**
     Returns Montserrat font with extra bold italic style.

     - parameter size: size of the font
     */
    public class func montserratExtraBoldItalic(size: CGFloat) -> UIFont! {
        fontInit()
        return UIFont.init(name: fonts[11], size: size);
    }

    /**
     Returns Montserrat font with medium style.

     - parameter size: size of the font
     */
    public class func montserratMedium(size: CGFloat) -> UIFont! {
        fontInit()
        return UIFont.init(name: fonts[12], size: size);
    }

    /**
     Returns Montserrat font with medium italic style.

     - parameter size: size of the font
     */
    public class func montserratMediumItalic(size: CGFloat) -> UIFont! {
        fontInit()
        return UIFont.init(name: fonts[13], size: size);
    }

    /**
     Returns Montserrat font with semi bold style.

     - parameter size: size of the font
     */
    public class func montserratSemiBold(size: CGFloat) -> UIFont! {
        fontInit()
        return UIFont.init(name: fonts[14], size: size);
    }

    /**
     Returns Montserrat font with semi bold italic style.

     - parameter size: size of the font
     */
    public class func montserratSemiBoldItalic(size: CGFloat) -> UIFont! {
        fontInit()
        return UIFont.init(name: fonts[15], size: size);
    }

}
