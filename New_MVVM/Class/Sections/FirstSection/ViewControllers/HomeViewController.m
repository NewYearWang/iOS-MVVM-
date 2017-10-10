//
//  HomeViewController.m
//  New_MVVM
//
//  Created by 票金所 on 16/4/26.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import "HomeViewController.h"
#import "FirstViewModel.h"
#import "HomeFirstSectionCell.h"
#import "MainTitleTableViewCell.h"
#import "HomeInfoTableViewCell.h"

@interface HomeViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) FirstViewModel *viewModel;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"首页";
    
    
    self.viewModel = [[FirstViewModel alloc] init];
    [self.viewModel loadData];
    
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.backgroundColor = BACKGROUND_COLOR;
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    // 轮播图cell
    [self.tableView registerNib:[UINib nibWithNibName:@"HomeFirstSectionCell" bundle:nil] forCellReuseIdentifier:@"HomeFirstSectionCell"];
    [self.tableView registerNib:[UINib nibWithNibName:@"MainTitleTableViewCell" bundle:nil] forCellReuseIdentifier:@"MainTitleTableViewCell"];
    [self.tableView registerNib:[UINib nibWithNibName:@"HomeInfoTableViewCell" bundle:nil] forCellReuseIdentifier:@"HomeInfoTableViewCell"];
    
    @weakify(self);
    [RACObserve(self.viewModel, firstArray) subscribeNext:^(id x) {
        @strongify(self);
        [self.tableView reloadData];
        
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}


- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 171;
    }
    else if (indexPath.section == 1) {
        return 150;
    }
    else {
        return 106;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        MainTitleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainTitleTableViewCell" forIndexPath:indexPath];
        return cell;
    }
    else if (indexPath.section == 1) {
        HomeInfoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HomeInfoTableViewCell"];
        return cell;
    }
    else {
        HomeFirstSectionCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HomeFirstSectionCell"];
        cell.lb_secondStr.text = [NSString stringWithFormat:@"%ld", indexPath.section];
        cell.lb_row.text = [NSString stringWithFormat:@"%ld", indexPath.row];
        cell.lb_firstStr.text = [[self.viewModel.firstArray objectAtIndex:indexPath.row] objectForKey:@"a"];
        cell.lb_secondStr.text = [[self.viewModel.firstArray objectAtIndex:indexPath.row] objectForKey:@"b"];
        return cell;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    }
    else if (section == 1) {
        return 10;
    }
    else {
        return self.viewModel.firstArray.count;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
