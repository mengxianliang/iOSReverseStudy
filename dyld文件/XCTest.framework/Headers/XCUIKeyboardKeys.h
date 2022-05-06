#if __has_include(<XCUIAutomation/XCUIKeyboardKeys.h>)
#import <XCUIAutomation/XCUIKeyboardKeys.h>
#else

//
//  Copyright (c) 2015 Apple Inc. All rights reserved.
//

#import <XCTest/XCTestDefines.h>

NS_ASSUME_NONNULL_BEGIN

/*!
    Constants for use with -[XCUIElement typeKey:modifierFlags:],
    representing keys that have no textual representation. These comprise
    the set of control, function, and modifier keys found on most keyboards.
*/

typedef NSString * XCUIKeyboardKey NS_TYPED_EXTENSIBLE_ENUM;

XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyDelete;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyReturn;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyEnter;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyTab;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeySpace;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyEscape;

XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyUpArrow;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyDownArrow;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyLeftArrow;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyRightArrow;

XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF1;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF2;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF3;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF4;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF5;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF6;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF7;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF8;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF9;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF10;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF11;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF12;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF13;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF14;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF15;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF16;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF17;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF18;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyF19;

XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyForwardDelete;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyHome;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyEnd;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyPageUp;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyPageDown;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyClear;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyHelp;

XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyCapsLock;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyShift;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyControl;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyOption;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyCommand;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyRightShift;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyRightControl;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyRightOption;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeyRightCommand;
XCT_EXPORT XCUIKeyboardKey const XCUIKeyboardKeySecondaryFn;

NS_ASSUME_NONNULL_END

#endif
