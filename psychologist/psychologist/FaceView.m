//
//  FaceView.m
//  Happy
//
//  Created by 李宇杰 on 13-8-10.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "FaceView.h"

@implementation FaceView
#define DEFAULT_SCALE 0.90
@synthesize scale=_scale;

-(CGFloat)scale{
    if(!_scale){ //scale==0的情况
        return DEFAULT_SCALE;
    }
    else return _scale;
}

-(void)setScale:(CGFloat)scale{
    _scale=scale;
    [self setNeedsDisplay];//set后要重绘
}

-(void)pinch:(UIPinchGestureRecognizer*)gesture{
    if(gesture.state==UIGestureRecognizerStateChanged||gesture.state==UIGestureRecognizerStateEnded)
    { self.scale*=gesture.scale;//scale通过gesture的距离进行设置
      gesture.scale=1;
    }
}
-(void)setup{
    self.contentMode=UIViewContentModeRedraw;
}

-(void)awakeFromNib{
    [self setup];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
            }
    return self;
}

-(void)drawCicleAtPoint:(CGPoint)p withRadius:(CGFloat)radius inContext:(CGContextRef)context{
    UIGraphicsPushContext(context);
    CGContextBeginPath(context);
    CGContextAddArc(context, p.x, p.y, radius, 0, 2*M_PI, YES);//YES表示顺时针
    CGContextStrokePath(context);
    UIGraphicsPopContext();
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    //画脸-大圆
    //画眼睛-两个校园
    //画嘴巴-线条

    CGContextRef context = UIGraphicsGetCurrentContext();
    CGPoint midPoint;//中心点
    midPoint.x=self.bounds.origin.x+self.bounds.size.width/2;
    midPoint.y=self.bounds.origin.y+self.bounds.size.height/2;
    //size定义最短边
    CGFloat size=self.bounds.size.width/2;
    if(self.bounds.size.height<self.bounds.size.width)
        size=self.bounds.size.height/2;
    size*=self.scale;//脸圆半径为最短边的放大倍

    CGContextSetLineWidth(context, 5.0);
    [[UIColor blueColor]setStroke];
    [self drawCicleAtPoint:midPoint withRadius:size inContext:context];
    
#define EYE_H 0.35
#define EYE_W 0.35
#define EYE_RADIUS 0.2
    CGPoint eyePoint;
    eyePoint.x=midPoint.x-size*EYE_W;
    eyePoint.y=midPoint.y-size*EYE_H;
    [self drawCicleAtPoint:eyePoint withRadius:size*EYE_RADIUS inContext:context];
    eyePoint.x+=size*EYE_W*2;
    [self drawCicleAtPoint:eyePoint withRadius:size*EYE_RADIUS inContext:context];
    
#define MOUTH_H 0.45
#define MOUTH_V 0.4
#define MOUTH_SMILE 0.25
    CGPoint mouthStart;
    CGPoint mouthEnd;
    mouthStart.x=midPoint.x-MOUTH_H*size;
    mouthStart.y=midPoint.y+MOUTH_V*size;
    mouthEnd=mouthStart;
    mouthEnd.x+=MOUTH_H*size*2;
    CGPoint mouthCP1 = mouthStart;
    CGPoint mouthCP2 = mouthEnd;
    mouthCP1.x += MOUTH_H* size* 2/3;
    mouthCP2.x -= MOUTH_V* size* 2/3;
    
    float smile=[self.dataSource smileForFaceView:self];
    if(smile<-1)smile=-1;
    if(smile>1)smile=1;
    
    CGFloat smileoffset=MOUTH_SMILE*size*smile;
    mouthCP1.y+=smileoffset;
    mouthCP2.y+=smileoffset;
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, mouthStart.x, mouthStart.y);
    CGContextAddCurveToPoint(context, mouthCP1.x, mouthCP1.y, mouthCP2.x, mouthCP2.y, mouthEnd.x, mouthEnd.y);
    CGContextStrokePath(context);
}

@end
