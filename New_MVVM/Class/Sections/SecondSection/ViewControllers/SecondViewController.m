//
//  SecondViewController.m
//  New_MVVM
//
//  Created by 票金所 on 16/4/26.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import "SecondViewController.h"
#import "SecondViewTableViewCell.h"

@interface SecondViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *array;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    // 轮播图cell
    [self.tableView registerNib:[UINib nibWithNibName:@"SecondViewTableViewCell" bundle:nil] forCellReuseIdentifier:@"SecondViewTableViewCell"];
    
    self.array = @[@"http://www.bz55.com/uploads/allimg/140414/137-140414094T9.jpg",
                   @"http://img1.3lian.com/2015/w7/98/d/22.jpg",
                   @"http://pic9.nipic.com/20100904/4845745_195609329636_2.jpg",
                   @"http://pic1.nipic.com/2008-12-09/200812910493588_2.jpg",
                   @"http://img1.3lian.com/2015/w7/90/d/5.jpg",
                   @"http://img1.3lian.com/2015/w7/90/d/1.jpg",
                   @"http://img1.3lian.com/2015/w7/90/d/2.jpg",
                   @"http://img1.3lian.com/2015/w7/90/d/3.jpg",
                   @"http://img1.3lian.com/2015/w7/90/d/4.jpg",
                   @"http://img1.3lian.com/2015/w7/90/d/6.jpg",
                   @"http://pic1.nipic.com/2008-12-25/2008122510134038_2.jpg",
                   @"http://pic10.nipic.com/20101103/5063545_000227976000_2.jpg",
                   @"http://pic15.nipic.com/20110731/8022110_162804602317_2.jpg",
                   @"http://hiphotos.baidu.com/praisejesus/pic/item/e8df7df89fac869eb68f316d.jpg",
                   @"http://pic1.nipic.com/2008-11-13/2008111384358912_2.jpg",
                   @"http://pic37.nipic.com/20140209/8821914_163234218136_2.jpg",
                   @"http://pic.58pic.com/58pic/11/19/56/80d58PICzng.jpg",
                   @"http://pic39.nipic.com/20140226/18071023_162553457000_2.jpg",
                   @"http://pic9.nipic.com/20100818/5514989_172647012992_2.jpg",
                   @"http://img3.imgtn.bdimg.com/it/u=2336398478,1319757445&fm=21&gp=0.jpg",
                   @"http://pic41.nipic.com/20140524/18849442_210536184142_2.jpg",
                   @"http://img2.imgtn.bdimg.com/it/u=748131240,1005730028&fm=21&gp=0.jpg",
                   @"http://pic39.nipic.com/20140226/18071023_153953904000_2.jpg",
                   @"http://img1.3lian.com/2015/w7/98/d/1.jpg",
                   @"http://img1.3lian.com/2015/w7/98/d/2.jpg",
                   @"http://img1.3lian.com/2015/w7/98/d/3.jpg",
                   @"http://img1.3lian.com/2015/w7/98/d/4.jpg",
                   @"http://img1.3lian.com/2015/w7/98/d/20.jpg",
                   @"http://img1.3lian.com/2015/w7/98/d/21.jpg",
                   @"http://img.61gequ.com/allimg/2011-4/201142614314278502.jpg",
                   @"http://image.tianjimedia.com/uploadImages/2012/236/E9KM62UC029C.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/1.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/2.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/3.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/4.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/5.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/6.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/7.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/8.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/9.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/10.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/11.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/12.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/13.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/14.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/15.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/16.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/17.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/18.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/19.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/20.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/21.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/22.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/23.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/24.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/25.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/26.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/27.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/28.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/29.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/30.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/31.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/32.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/33.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/34.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/35.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/36.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/37.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/38.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/39.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/40.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/41.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/42.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/43.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/44.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/45.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/46.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/47.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/48.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/49.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/50.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/51.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/52.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/53.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/54.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/55.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/56.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/57.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/58.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/59.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/60.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/61.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/62.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/63.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/64.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/65.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/66.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/67.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/68.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/69.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/70.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/71.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/72.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/73.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/74.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/75.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/76.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/77.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/78.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/79.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/80.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/81.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/82.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/83.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/84.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/85.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/86.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/87.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/88.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/89.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/90.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/91.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/92.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/93.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/94.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/95.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/96.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/97.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/98.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/99.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/100.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/101.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/102.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/103.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/104.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/105.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/106.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/107.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/108.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/109.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/110.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/111.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/112.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/113.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/114.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/115.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/116.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/117.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/118.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/119.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/120.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/121.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/122.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/123.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/124.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/125.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/126.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/127.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/128.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/129.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/130.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/131.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/132.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/133.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/134.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/135.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/136.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/137.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/138.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/139.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/140.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/141.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/142.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/143.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/144.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/145.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/146.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/147.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/148.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/149.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/150.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/151.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/152.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/153.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/154.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/155.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/156.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/157.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/158.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/159.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/160.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/161.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/162.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/163.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/164.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/165.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/166.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/167.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/168.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/169.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/170.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/171.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/172.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/173.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/174.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/175.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/176.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/177.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/178.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/179.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/180.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/181.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/182.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/183.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/184.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/185.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/186.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/187.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/188.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/189.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/190.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/191.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/192.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/193.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/194.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/195.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/196.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/197.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/198.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/199.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/200.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/201.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/202.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/203.jpg",
                   @"http://img1.3lian.com/2015/a1/31/d/204.jpg"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.array.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 160;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SecondViewTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SecondViewTableViewCell" forIndexPath:indexPath];
    
    [cell.backImageView sd_setImageWithURL:[NSURL URLWithString:[self.array objectAtIndex:indexPath.row]] placeholderImage:[UIImage imageNamed:@"22.jpg"] options:SDWebImageLowPriority completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        
    }];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 180;
}


- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    
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
