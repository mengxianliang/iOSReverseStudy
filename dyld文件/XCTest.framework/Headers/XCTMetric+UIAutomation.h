#if __has_include(<XCUIAutomation/XCTMetric+UIAutomation.h>)
#import <XCUIAutomation/XCTMetric+UIAutomation.h>
#else

//
//  Copyright © 2018 Apple Inc. All rights reserved.
//

#import <XCTest/XCTMetric.h>

@class XCUIApplication;

NS_ASSUME_NONNULL_BEGIN

XCT_METRIC_API_AVAILABLE
@interface XCTCPUMetric (UIAutomation)

/*!
 * @method initWithApplication:
 * Creates a metric which will target the process described by the XCUIApplication instance.
 *
 * @param application An instance of XCUIApplication which will be targeted to gather measurements.
 *
 * @return An initialized metric.
 */
- (instancetype)initWithApplication:(XCUIApplication *)application;

@end

XCT_METRIC_API_AVAILABLE
@interface XCTMemoryMetric (UIAutomation)

/*!
 * @method initWithApplication:
 * Creates a metric which will target the process described by the XCUIApplication instance.
 *
 * @param application An instance of XCUIApplication which will be targeted to gather measurements.
 *
 * @return An initialized metric.
 */
- (instancetype)initWithApplication:(XCUIApplication *)application;

@end

XCT_METRIC_API_AVAILABLE
@interface XCTStorageMetric (UIAutomation)

/*!
 * @method initWithApplication:
 * Creates a metric which will target the process described by the XCUIApplication instance.
 *
 * @param application An instance of XCUIApplication which will be targeted to gather measurements.
 *
 * @return An initialized metric.
 */
- (instancetype)initWithApplication:(XCUIApplication *)application;

@end

NS_ASSUME_NONNULL_END

#endif
