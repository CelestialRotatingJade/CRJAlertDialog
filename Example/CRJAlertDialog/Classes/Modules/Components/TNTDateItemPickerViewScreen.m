//
//  TNTDateItemPickerViewScreen.m
//  CRJUIComponents_Example
//
//  Created by 朱玉辉(EX-ZHUYUHUI001) on 2020/12/10.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//

#import "TNTDateItemPickerViewScreen.h"
@interface TNTDateItemPickerViewScreen ()

@end

@implementation TNTDateItemPickerViewScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)showPicker {
    
//    NSMutableArray *datas = [NSMutableArray array];
//    for (int i = 0; i < 1000; i++) {
//        [datas addObject:[NSString stringWithFormat:@"%d",i]];
//    }
//
//    CRJDateItemPickerView.build.withObject(self).withDelegate(self).withInfo(@"请选择").withShowDatas(datas).prepareAndShowInKeyWindow();
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self showPicker];
//    UIDatePicker *picker  = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 140.f, self.view.width, 180.f)];
//    picker.datePickerMode = UIDatePickerModeDate;
//    if (@available(iOS 13.4, *)) {
////        picker.preferredDatePickerStyle = UIDatePickerStyleWheels;//滚轮
//    }
//
//    [self.contentView addSubview:picker];

    
    
}
@end
