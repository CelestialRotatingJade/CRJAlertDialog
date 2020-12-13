//
//  TNTSingleChoicePickerViewScreen.m
//  CRJUIComponents_Example
//
//  Created by zhuyuhui on 2020/12/11.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//

#import "TNTSingleChoicePickerViewScreen.h"
@interface TNTSingleChoicePickerViewScreen ()

@end

@implementation TNTSingleChoicePickerViewScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)showPicker {
    
    NSMutableArray *datas = [NSMutableArray array];
    for (int i = 0; i < 1000; i++) {
        [datas addObject:[NSString stringWithFormat:@"%d",i]];
    }
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self showPicker];
}

@end
