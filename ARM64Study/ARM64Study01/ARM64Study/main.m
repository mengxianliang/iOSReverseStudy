//
//  main.m
//  ARM64Study
//
//  Created by mxl on 2022/5/30.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "arm.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    
    test();
    add(1, 2);
    sub(5, 3);
    
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
