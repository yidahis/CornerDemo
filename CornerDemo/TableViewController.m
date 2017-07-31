//
//  TableViewController.m
//  CornerDemo
//
//  Created by zhouyi on 2017/7/31.
//  Copyright © 2017年 NewBornTown, Inc. All rights reserved.
//

#import "TableViewController.h"
#import "MoreCollectionViewController.h"

@interface TableViewController ()
@property (copy,nonatomic) NSArray *cellTitls;
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cellTitls = @[@"异步剪裁",@"layer.mask",@"cornerRadius + maskToBounds"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text = self.cellTitls[indexPath.row];
    cell.textLabel.textColor = [UIColor redColor];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIStoryboard *board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    MoreCollectionViewController* vc = [board instantiateViewControllerWithIdentifier:@"MoreCollectionViewController"];
    vc.type = indexPath.row;
    [self.navigationController pushViewController:vc animated:YES];
}

@end
