#if __has_include(<XCUIAutomation/XCTAttachment+XCUIScreenshot.h>)
#import <XCUIAutomation/XCTAttachment+XCUIScreenshot.h>
#else

//
//  Copyright © 2021 Apple Inc. All rights reserved.
//

#import <XCTest/XCTAttachment.h>

NS_ASSUME_NONNULL_BEGIN

@class XCUIScreenshot;

@interface XCTAttachment (XCUIScreenshot_ConvenienceInitializers)

/*!
 * @method +attachmentWithScreenshot:
 * Creates an attachment with a screenshot and the specified quality.
 */
+ (instancetype)attachmentWithScreenshot:(XCUIScreenshot *)screenshot;

/*!
 * @method +attachmentWithScreenshot:quality:
 * Creates an attachment with a screenshot and the specified quality.
 */
+ (instancetype)attachmentWithScreenshot:(XCUIScreenshot *)screenshot quality:(XCTImageQuality)quality;

@end

NS_ASSUME_NONNULL_END

#endif
