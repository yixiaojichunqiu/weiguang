//
//  UIButton+navi.m
//  weiguang
//
//  Created by tiankey on 15/12/8.
//  Copyright © 2015年 tiankey. All rights reserved.
//

#import "UIButton+navi.h"

@implementation UIButton (navi)

+(UIButton *)buttonInNaviwithTarget:(id)target withAction:(SEL)action
{
    UIButton *menubtn=[UIButton buttonWithType:UIButtonTypeCustom];
    menubtn.frame=CGRectMake(0, 0, 20, 18);
    [menubtn setBackgroundImage:[UIImage imageNamed:@"menu"] forState:UIControlStateNormal];
    [menubtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return menubtn;
}



@end
