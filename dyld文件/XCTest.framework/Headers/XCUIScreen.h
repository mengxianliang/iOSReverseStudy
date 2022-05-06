#if __has_include(<XCUIAutomation/XCUIScreen.h>)
#import <XCUIAutomation/XCUIScreen.h>
#else

//
//  Copyright © 2017 Apple. All rights reserved.
//

#import <XCTest/XCTestDefines.h>
#import <XCTest/XCUIScreenshotProviding.h>

NS_ASSUME_NONNULL_BEGIN

/*!
 * Represents an active screen of a device. One screen of each device is designated
 * as the "main" screen, on macOS that is the one owning the menu bar, on other platforms
 * it is the primary screen of the device.
 *
 * A screen can be asked for a screenshot using the methods declared in XCUIScreenshotProviding.
 */
@interface XCUIScreen : NSObject <XCUIScreenshotProviding>

+ (instancetype)new XCT_UNAVAILABLE("Use XCUIScreen.screens or XCUIScreen.mainScreen to acquire particular screen objects.");
- (instancetype)init XCT_UNAVAILABLE("Use XCUIScreen.screens or XCUIScreen.mainScreen to acquire particular screen objects.");

/*!
 * Returns the current device's main screen.
 */
@property (class, readonly, strong) XCUIScreen *mainScreen;

/*!
 * Returns the list of active screens.
 * The first screen returned in the list is the main screen.
 */
@property (class, readonly, copy) NSArray<XCUIScreen *> *screens;

@end

NS_ASSUME_NONNULL_END

#endif
