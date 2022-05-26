//
//  ViewController.m
//  LLDB指令
//
//  Created by mxl on 2022/5/20.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, assign) int age;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

void test()
{
    int a = 10;
    int b = 20;
    NSLog(@"a + b = %d", a + b);
}

/*
 test();
 NSLog(@"1");
 NSLog(@"2");
 NSLog(@"3");
 
 self.age = 20;
 */





@end
