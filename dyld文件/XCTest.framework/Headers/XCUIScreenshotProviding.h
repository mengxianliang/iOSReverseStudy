#if __has_include(<XCUIAutomation/XCUIScreenshotProviding.h>)
#import <XCUIAutomation/XCUIScreenshotProviding.h>
#else

//
//  Copyright © 2017 Apple. All rights reserved.
//

#import <XCTest/XCTestDefines.h>

@class XCUIScreenshot;

NS_ASSUME_NONNULL_BEGIN

@class XCTAttachment;

@protocol XCUIScreenshotProviding <NSObject>

/*!
 * Captures and returns a screenshot of the receiver.
 *
 * Equivalent to capturing a screenshot manually, e.g. if two windows are overlapping and
 * the occluded window is captured, the front window will be visible in the screenshot.
 */
- (XCUIScreenshot *)screenshot;

@end

NS_ASSUME_NONNULL_END

#endif
