//
//  FaceView.h
//  Happy
//
//  Created by 李宇杰 on 13-8-10.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FaceView;

@protocol FaceViewDataSource

-(float)smileForFaceView:(FaceView *)sender;

@end

@interface FaceView : UIView

@property(nonatomic)CGFloat scale;//表示缩放的程度

-(void)pinch:(UIPinchGestureRecognizer*)gesture;


@property(nonatomic,weak) IBOutlet id<FaceViewDataSource> dataSource;

@end
