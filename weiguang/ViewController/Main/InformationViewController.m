//
//  InformationViewController.m
//  weiguang
//
//  Created by tiankey on 15/12/4.
//  Copyright © 2015年 tiankey. All rights reserved.
//

#import "InformationViewController.h"

@interface InformationViewController ()<UIScrollViewDelegate>
@property (nonatomic, strong) UIScrollView* scrollView;
@end

@implementation InformationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self oppositeButton];
    [self scrollBackground];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)oppositeButton
{
    NSArray* names = @[@"最新",@"书籍",@"音乐",@"娱乐"];
    for (int i=0; i<4; i++) {
        UIButton *newsButton = [UIButton buttonWithType:UIButtonTypeCustom];
        newsButton.frame = CGRectMake(i * thisScreenWidth / 4, 64, thisScreenWidth / 4, thisScreenWidth / 13);
        [newsButton setTitle:names[i] forState:UIControlStateNormal];
        [newsButton setTitleColor:kRGBColor(70, 133, 255) forState:UIControlStateSelected];
        [newsButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        newsButton.backgroundColor = [UIColor whiteColor];
        newsButton.tag=i+1;
        [newsButton addTarget:self action:@selector(topButtonAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:newsButton];
    }
    //设置一开始第一个按钮选中状态
    UIButton* newestButton = (UIButton*)[self.view viewWithTag:1];
    newestButton.selected = YES;
}

- (void)scrollBackground
{
    UIScrollView *scrollview = [[UIScrollView alloc] init];
    scrollview.backgroundColor = [UIColor redColor];
    scrollview.delegate = self;
    CGRect frame = self.view.frame;
    frame.origin.y += (thisScreenWidth / 13 + 66);
    frame.size.height -= (thisScreenWidth / 13 + 150);
    scrollview.frame = frame;
    scrollview.contentSize = CGSizeMake(frame.size.width*4, 0);
    scrollview.bounces = NO;
    scrollview.pagingEnabled = YES;
    scrollview.showsHorizontalScrollIndicator = NO;
    scrollview.showsVerticalScrollIndicator = NO;
    self.scrollView = scrollview;
    [self.view addSubview:scrollview];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)topButtonAction:(UIButton*)sender
{
    if (sender.tag==1) {
        [self.scrollView setContentOffset:CGPointMake(self.view.bounds.size.width*0, 0) animated:YES];
    }
    else if(sender.tag==2)
    {
        [self.scrollView setContentOffset:CGPointMake(self.view.bounds.size.width*1, 0) animated:YES];
    }
    else if(sender.tag==3)
    {
        [self.scrollView setContentOffset:CGPointMake(self.view.bounds.size.width*2, 0) animated:YES];
    }
    else
    {
        [self.scrollView setContentOffset:CGPointMake(self.view.bounds.size.width*3, 0) animated:YES];
    }
}

#pragma mark-----scrollView代理方法
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGPoint offset=scrollView.contentOffset;
    if (offset.x!=0) {
        NSInteger index=round(offset.x/self.view.frame.size.width);
        UIButton *newestButton=(UIButton*)[self.view viewWithTag:1];
        UIButton *newsButton=(UIButton*)[self.view viewWithTag:2];
        UIButton *musicButton=(UIButton*)[self.view viewWithTag:3];
        UIButton *entertainmentButton=(UIButton*)[self.view viewWithTag:4];
        newestButton.selected=NO;
        newsButton.selected=NO;
        musicButton.selected=NO;
        entertainmentButton.selected=NO;
        if (index==0) {
            newestButton.selected=YES;
        }
        else if(index==1)
        {
            newsButton.selected=YES;
        }
        else if(index==2)
        {
            musicButton.selected=YES;
        }
        else
        {
            entertainmentButton.selected=YES;
        }
        
    }
}

@end
