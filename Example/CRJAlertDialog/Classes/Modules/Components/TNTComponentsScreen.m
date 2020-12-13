//
//  TNTComponentsScreen.m
//  CRJUIComponents_Example
//
//  Created by 朱玉辉(EX-ZHUYUHUI001) on 2020/12/10.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//

#import "TNTComponentsScreen.h"
#import "TNTComponentCell.h"
#import <CRJTransitionAnimator/CRJTransitionAnimator.h>
#import <CRJAlertDialog/CRJAlertDialog.h>
#import <Toast/Toast.h>
#import "DLTestViewController.h"
#import "TNTSingleSelectCell.h"

@interface TNTComponentsScreen ()<CRJAlertBaseDialogDelegate>
@property(nonatomic, strong) NSArray * dataSource;
@end

@implementation TNTComponentsScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSource = @[
        @{
            @"title": @"基础弹窗", @"data": @[
                    @{@"name": @"日期"},
                    @{@"name": @"单选"},
                    @{@"name": @"多选"},
                    @{@"name": @"Bottom Translate"},
                    @{@"name": @"Center Fading"},
                    @{@"name": @"Center FromTop"},
                    @{@"name": @"Center FromBottom"}
            ]},
    ];
    
    
    
    // 步骤1：
    self.recylerView.rowHeight = UITableViewAutomaticDimension;
    // 步骤2：
    self.recylerView.estimatedRowHeight = 100.0;

}
#pragma mark - UITableViewDelegate
//- (UITableViewStyle)preferredRecylerViewStyle {
//    return UITableViewStyleGrouped;
//}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataSource.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return self.dataSource[section][@"title"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *arr = self.dataSource[section][@"data"];
    return arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"cell";
    TNTComponentCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[TNTComponentCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    NSArray *arr = self.dataSource[indexPath.section][@"data"];
    if (arr.count > 0) {
        cell.contentLabel.text = arr[indexPath.row][@"name"];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            [self presentViewController:CRJDateDialog.build.withDelegate(self) animation:[CRJDateDialog defaultAnimator] completion:nil];

        }
        else if (indexPath.row == 1) {
            NSMutableArray *datas = [NSMutableArray array];
            for (int i = 0; i < 10; i++) {
                [datas addObject:[NSString stringWithFormat:@"%d",i]];
            }
            
            CRJAlertBaseDialog *alert = CRJSingleChoiceDialog.build.withCellClass(TNTSingleSelectCell.class).withAnimator([CRJSingleChoiceDialog defaultAnimator]).withDelegate(self).withShowDatas(datas).withSelectedItem(@"4");
            
            [self presentViewController:alert animation:[CRJSingleChoiceDialog defaultAnimator] completion:nil];

        }
        else if (indexPath.row == 2) {
            NSMutableArray *datas = [NSMutableArray array];
            for (int i = 0; i < 10; i++) {
                [datas addObject:[NSString stringWithFormat:@"%d",i]];
            }
            
            CRJAlertBaseDialog *alert = CRJMultiChoiceDialog.build.withAnimator([CRJMultiChoiceDialog defaultAnimator]).withDelegate(self).withShowDatas(datas).withSelectedItem(@"4");
            
            [self presentViewController:alert animation:[CRJMultiChoiceDialog defaultAnimator] completion:nil];

        }
    }
}

#pragma mark - CRJAlertBaseDialogDelegate
- (void)baseDialog:(CRJAlertBaseDialog *)dialog didSelectedItems:(NSArray *)items {
    if (items) {
        [self.view makeToast:[NSString stringWithFormat:@"%@",items]];
    }
}

- (void)baseDialogWillShow:(CRJAlertBaseDialog *)dialog {
    if ([dialog isKindOfClass:CRJMultiChoiceDialog.class]) {
        [((CRJMultiChoiceDialog *)dialog).disableDatas addObject:@"3"];
        [((CRJMultiChoiceDialog *)dialog).tableView reloadData];
    }
}

//- (void)baseDialogDidShow:(CRJAlertBaseDialog *)dialog {
//    if ([dialog isKindOfClass:CRJMultiChoiceDialog.class]) {
//        [((CRJMultiChoiceDialog *)dialog).disableDatas addObject:@"3"];
//        [((CRJMultiChoiceDialog *)dialog).tableView reloadData];
//    }
//}
@end
