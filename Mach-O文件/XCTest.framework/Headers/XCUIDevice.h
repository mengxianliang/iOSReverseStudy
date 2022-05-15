#if __has_include(<XCUIAutomation/XCUIDevice.h>)
#import <XCUIAutomation/XCUIDevice.h>
#else

//
//  Copyright (c) 2014-2015 Apple Inc. All rights reserved.
//


#import <XCTest/XCTestDefines.h>
#import <XCTest/XCUISiriService.h>
#import <XCTest/XCUIElement.h>

@class XCUISiriService;

#if TARGET_OS_IPHONE && !TARGET_OS_MACCATALYST

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/*!
 * @enum XCUIDeviceButton
 *
 * Represents a physical button on a device.
 *
 * @note Some buttons are not available in the Simulator, and should not be used in your tests.
 * You can use a block like this:
 *
 *     #if !TARGET_OS_SIMULATOR
 *     // test code that depends on buttons not available in the Simulator
 *     #endif
 *
 * in your test code to ensure it does not call unavailable APIs.
 */
typedef NS_ENUM(NSInteger, XCUIDeviceButton) {
    XCUIDeviceButtonHome = 1,
    XCUIDeviceButtonVolumeUp XCTEST_SIMULATOR_UNAVAILABLE("This API is not available in the Simulator, see the XCUIDeviceButton documentation for details.") = 2,
    XCUIDeviceButtonVolumeDown XCTEST_SIMULATOR_UNAVAILABLE("This API is not available in the Simulator, see the XCUIDeviceButton documentation for details.") = 3
};

/*! Represents a device, providing an interface for simulating events involving physical buttons and device state. */
@interface XCUIDevice : NSObject

/*! The current device. */
@property (class, readonly) XCUIDevice *sharedDevice;

+ (instancetype)new XCT_UNAVAILABLE("Access XCUIDevice through +sharedDevice");
- (instancetype)init
    XCT_DEPRECATED_WITH_REPLACEMENT("XCUIDevice.sharedDevice")
    XCT_DEPRECATED_WITH_SWIFT_REPLACEMENT("XCUIDevice.shared");

#if TARGET_OS_IOS
/*! The orientation of the device. */
@property (nonatomic) UIDeviceOrientation orientation;
/*!
 * Provides access to an object representing the Siri interface on the device.
 */
@property (readonly) XCUISiriService *siriService NS_AVAILABLE_IOS(10_3);

@property (readonly) BOOL supportsPointerInteraction;
#endif

/*! Simulates the user pressing a physical button. */
- (void)pressButton:(XCUIDeviceButton)button;

#if TARGET_OS_WATCH
/*!
 * Rotate the digital crown by a specified amount.
 *
 * @param rotationalDelta
 * The amount by which to rotate the digital crown. A value of 1.0 represents one full rotation.
 * The value’s sign indicates the rotation’s direction, but the sign is adjusted based on the crown’s orientation.
 * Positive values always indicate an upward scrolling gesture, while negative numbers indicate a downward scrolling gesture.
 *
 */
- (void)rotateDigitalCrownByDelta:(CGFloat)rotationalDelta;

/*!
 * Rotate the digital crown by a specified amount.
 *
 * @param rotationalDelta
 * The amount by which to rotate the digital crown. A value of 1.0 represents one full rotation.
 * The value’s sign indicates the rotation’s direction, but the sign is adjusted based on the crown’s orientation.
 * Positive values always indicate an upward scrolling gesture, while negative numbers indicate a downward scrolling gesture.
 *
 * @param velocity
 * The velocity with which to rotate the digital crown, specified in rotations per second. The sign of the value is ignored.
 *
 */
- (void)rotateDigitalCrownByDelta:(CGFloat)rotationalDelta withVelocity:(XCUIGestureVelocity)velocity;
#endif // TARGET_OS_WATCHOS

@end

NS_ASSUME_NONNULL_END

#endif

#endif
