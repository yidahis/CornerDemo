//
//  MoreCollectionViewController.m
//  CornerDemo
//
//  Created by zhouyi on 2017/7/31.
//  Copyright © 2017年 NewBornTown, Inc. All rights reserved.
//

#import "MoreCollectionViewController.h"
#import "MoreCollectionViewCell.h"
@interface MoreCollectionViewController ()

@end

@implementation MoreCollectionViewController

static NSString * const reuseIdentifier = @"MoreCollectionViewCell";
static CGFloat itemMargin = 15;
static CGFloat leftMargin = 5;


- (void)viewDidLoad {
    [super viewDidLoad];

    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    CGFloat itemH = ([UIScreen mainScreen].bounds.size.width - 3 * itemMargin - 2 * leftMargin) / 4;
    layout.itemSize = CGSizeMake(itemH, itemH);
    layout.minimumLineSpacing = itemMargin;
    layout.minimumInteritemSpacing = itemMargin;
    
    self.collectionView.collectionViewLayout = layout;
    [self.collectionView reloadData];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return 100;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSString *identifier = [reuseIdentifier stringByAppendingString:[NSString stringWithFormat:@"%ld",(long)self.type]];
    
    MoreCollectionViewCell *cell = (MoreCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.type = self.type;
    
    return cell;
}

@end
