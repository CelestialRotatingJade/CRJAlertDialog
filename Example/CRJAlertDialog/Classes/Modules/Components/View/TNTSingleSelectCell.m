//
//  TNTSingleSelectCell.m
//  CRJAlertController_Example
//
//  Created by zhuyuhui on 2020/12/13.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//

#import "TNTSingleSelectCell.h"

@implementation TNTSingleSelectCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setCellSelect:(BOOL)select {
    if (select) {
        self.titleLabel.textColor = [UIColor redColor];
        self.titleLabel.font = [UIFont boldSystemFontOfSize:18];
    } else {
        self.titleLabel.font = [UIFont systemFontOfSize:15];
        self.titleLabel.textColor = [[UIColor redColor] colorWithAlphaComponent:0.5];
    }
}

@end
