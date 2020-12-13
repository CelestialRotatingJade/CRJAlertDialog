//
//  DLTestViewController.m
//  整理
//
//  Created by 周冰烽 on 2020/6/3.
//  Copyright © 2020 周冰烽. All rights reserved.
//

#import "DLTestViewController.h"
#import <CRJTransitionAnimator/CRJTransitionAnimator.h>

@interface DLTestViewController ()

@end

@implementation DLTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    DLTestViewController *testVC = [[DLTestViewController alloc] init];
    DLAnimationCenterFromTop *animation = [[DLAnimationCenterFromTop alloc] init];
    [self presentViewController:testVC animation:animation completion:nil];

}

@end
