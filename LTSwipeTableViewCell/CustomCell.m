//
//  CustomCell.m
//  LTSwipeTableViewCell
//
//  Created by ltebean on 14/10/15.
//  Copyright (c) 2014年 ltebean. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initSideView];
    }
    return self;
}

- (id)initWithCoder:(NSCoder*)aDecoder
{
    if(self = [super initWithCoder:aDecoder]) {
        [self initSideView];
    }
    return self;
}

-(void) initSideView
{
    UIButton *cancelBtn=[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 70, 70)];
    cancelBtn.backgroundColor=[UIColor grayColor];
    cancelBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    cancelBtn.titleLabel.font = [UIFont fontWithName:@"Helvetica Neue" size:18];
    [cancelBtn setTitle:@"cancel" forState:UIControlStateNormal];
    [cancelBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [cancelBtn addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];

    UIButton *delBtn=[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 70, 70)];
    delBtn.backgroundColor=[UIColor redColor];
    delBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    delBtn.titleLabel.font = [UIFont fontWithName:@"Helvetica Neue" size:18];
    [delBtn setTitle:@"delete" forState:UIControlStateNormal];
    [delBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    [delBtn addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self addRightView:cancelBtn];
    [self addRightView:delBtn];

}

-(void) clicked:(UIButton*) button
{
    [self animateBack];
}




@end
