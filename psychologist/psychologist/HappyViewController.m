//
//  HappyViewController.m
//  Happy
//
//  Created by 李宇杰 on 13-8-10.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "HappyViewController.h"
#import "FaceView.h"

@interface HappyViewController ()<FaceViewDataSource>
@property(nonatomic,weak)IBOutlet FaceView* faceView;
@end

@implementation HappyViewController

-(void)setHappiness:(int)happiness{
    _happiness=happiness;
    [self.faceView setNeedsDisplay];
}

-(void)setFaceView:(FaceView *)faceView{
    _faceView=faceView;
    self.faceView.dataSource=self;
    [self.faceView addGestureRecognizer:[[UIPinchGestureRecognizer alloc]initWithTarget:self.faceView action:@selector(pinch:)]];
    [self.faceView addGestureRecognizer:[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(handleHappinessGesture:)]];
}
-(float)smileForFaceView:(FaceView *)sender{
    return (self.happiness-50)/50.0;
}

-(void)handleHappinessGesture:(UIPanGestureRecognizer *)gesture{
    if(gesture.state==UIGestureRecognizerStateChanged||gesture.state==UIGestureRecognizerStateEnded){
    CGPoint translation = [gesture translationInView:self.faceView];
    self.happiness -= translation.y/2;
    [gesture setTranslation:CGPointZero inView:self.faceView];
    }
    
}
@end
