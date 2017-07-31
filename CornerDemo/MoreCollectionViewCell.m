//
//  MoreCollectionViewCell.m
//  CornerDemo
//
//  Created by zhouyi on 2017/7/31.
//  Copyright © 2017年 NewBornTown, Inc. All rights reserved.
//

#import "MoreCollectionViewCell.h"
#import "UIImageView+ZJRadius.h"

static CGFloat cellCornerRadius = 10;

@implementation MoreCollectionViewCell

- (void)layoutSubviews{
    [super layoutSubviews];
    switch (self.type) {
        case 0:
        {
            self.imageView.clipsCorner = YES;
            self.imageView.layer.cornerRadius = cellCornerRadius;
            [self.imageView setImage:[UIImage imageNamed:@"804446-0"]];
        }
            break;
        case 1:
            [self.imageView setImage:[UIImage imageNamed:@"804446-1"]];
            [self.imageView cornerRadius:cellCornerRadius];
            break;
        default:
            [self.imageView setImage:[UIImage imageNamed:@"804446-2"]];
            [self.imageView roundCorners:UIRectCornerAllCorners Radius:cellCornerRadius];
            break;
    }
}

@end
