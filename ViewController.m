//
//  ViewController.m
//  drawRect
//
//  Created by Senfor on 2018/8/11.
//  Copyright © 2018年 suz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self drawRect];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)drawRect{
    //    樱桃小丸子
    //    确定头部所在的圆心
    CGFloat headCornerRadius = 80;
    CGFloat arcCenterX = [UIScreen mainScreen].bounds.size.width / 2;
    CGFloat arcCenterY = 100+headCornerRadius;
    //
    // 头部
    CAShapeLayer* headLayer = [CAShapeLayer layer];
    UIBezierPath *headPath = [UIBezierPath bezierPath];
   /***
    *
    */
    //头部贝塞尔曲线的画法是由起点、终点、控制点三个参数来画的
    CGPoint headstartPoint = CGPointMake(arcCenterX - 90, arcCenterY +15);
    CGPoint headendPoint = CGPointMake(arcCenterX + 90, arcCenterY+15);
    CGPoint headcontrolPoint = CGPointMake(arcCenterX, arcCenterY);
    
    [headPath moveToPoint:headstartPoint];
    [headPath addQuadCurveToPoint:headendPoint controlPoint:headcontrolPoint];//三点控制
    //四点控制曲线
    [headPath addCurveToPoint:headstartPoint controlPoint1:CGPointMake(arcCenterX + 100, arcCenterY - 150) controlPoint2:CGPointMake(arcCenterX - 100, arcCenterY - 150)];
    [self setLayer:headLayer andWithPath:headPath];
    
    
    //    左耳
    CAShapeLayer* leftEarLayer = [CAShapeLayer layer];
    UIBezierPath* leftEarPath   = [UIBezierPath bezierPath];
    [leftEarPath moveToPoint:CGPointMake(arcCenterX - 58, arcCenterY - 30)];
    [leftEarPath addLineToPoint:CGPointMake(arcCenterX - 57, arcCenterY - 0)];
    [leftEarPath addQuadCurveToPoint:CGPointMake(arcCenterX - 58, arcCenterY - 30) controlPoint:CGPointMake(arcCenterX - 75, arcCenterY - 19)];
    leftEarPath.lineWidth = 1.5;
    [self setLayer:leftEarLayer andWithPath:leftEarPath];
    //    右耳
    CAShapeLayer* rightEarLayer = [CAShapeLayer layer];
    UIBezierPath* rightEarPath   = [UIBezierPath bezierPath];
    [rightEarPath moveToPoint:CGPointMake(arcCenterX + 58, arcCenterY - 30)];
    [rightEarPath addLineToPoint:CGPointMake(arcCenterX + 57, arcCenterY - 0)];
    [rightEarPath addQuadCurveToPoint:CGPointMake(arcCenterX + 58, arcCenterY - 30) controlPoint:CGPointMake(arcCenterX + 75, arcCenterY - 19)];
    rightEarPath.lineWidth = 1.5;
    [self setLayer:rightEarLayer andWithPath:rightEarPath];
    
    
    //脸部
    CAShapeLayer* faceLayer = [CAShapeLayer layer];
    UIBezierPath* facePath =  [UIBezierPath bezierPath];
    
    [facePath moveToPoint:CGPointMake(arcCenterX - 60, arcCenterY - 40)];
    [facePath addLineToPoint:CGPointMake(arcCenterX - 56, arcCenterY + 9)];
    [facePath addCurveToPoint:CGPointMake(arcCenterX + 56, arcCenterY + 9) controlPoint1:CGPointMake(arcCenterX - 25, arcCenterY + 50) controlPoint2:CGPointMake(arcCenterX + 25, arcCenterY + 50)];
    [facePath addLineToPoint:CGPointMake(arcCenterX + 60, arcCenterY - 40)];
    //    每个发梢边10，
    [facePath addQuadCurveToPoint:CGPointMake(arcCenterX + 50, arcCenterY - 45) controlPoint:CGPointMake(arcCenterX + 55, arcCenterY - 40)];
    [facePath addQuadCurveToPoint:CGPointMake(arcCenterX + 52, arcCenterY - 32) controlPoint:CGPointMake(arcCenterX + 48, arcCenterY - 40)];
    [facePath addQuadCurveToPoint:CGPointMake(arcCenterX + 35, arcCenterY - 53) controlPoint:CGPointMake(arcCenterX + 35, arcCenterY - 35)];
    [facePath addQuadCurveToPoint:CGPointMake(arcCenterX + 25, arcCenterY - 40) controlPoint:CGPointMake(arcCenterX + 28, arcCenterY - 55)];
    [facePath addQuadCurveToPoint:CGPointMake(arcCenterX + 15, arcCenterY - 58) controlPoint:CGPointMake(arcCenterX + 20, arcCenterY - 35)];
    [facePath addQuadCurveToPoint:CGPointMake(arcCenterX + 5, arcCenterY - 44) controlPoint:CGPointMake(arcCenterX+5 , arcCenterY - 48)];
    //中间发梢
    [facePath addQuadCurveToPoint:CGPointMake(arcCenterX - 3, arcCenterY - 60) controlPoint:CGPointMake(arcCenterX-5 , arcCenterY - 48)];
    
    [facePath addQuadCurveToPoint:CGPointMake(arcCenterX - 14, arcCenterY - 40) controlPoint:CGPointMake(arcCenterX-14 , arcCenterY - 48)];
    [facePath addQuadCurveToPoint:CGPointMake(arcCenterX - 20, arcCenterY - 53) controlPoint:CGPointMake(arcCenterX-23 , arcCenterY - 45)];
    
    [facePath addQuadCurveToPoint:CGPointMake(arcCenterX - 28, arcCenterY - 34) controlPoint:CGPointMake(arcCenterX-26 , arcCenterY - 42)];
    [facePath addQuadCurveToPoint:CGPointMake(arcCenterX - 38, arcCenterY - 47) controlPoint:CGPointMake(arcCenterX-35 , arcCenterY - 44)];
    [facePath addQuadCurveToPoint:CGPointMake(arcCenterX - 46, arcCenterY - 35) controlPoint:CGPointMake(arcCenterX-42 , arcCenterY - 30)];
    [facePath addQuadCurveToPoint:CGPointMake(arcCenterX - 50, arcCenterY - 49) controlPoint:CGPointMake(arcCenterX-48 , arcCenterY - 42)];
    [facePath addQuadCurveToPoint:CGPointMake(arcCenterX - 60, arcCenterY - 40) controlPoint:CGPointMake(arcCenterX-55 , arcCenterY - 38)];
    [self setLayer:faceLayer andWithPath:facePath];
    
    //    左眉毛
    CAShapeLayer* leftEyebrowLayer = [CAShapeLayer layer];
    UIBezierPath* leftEyebrowPath   = [UIBezierPath bezierPath];
    [leftEyebrowPath moveToPoint:CGPointMake(arcCenterX - 40, arcCenterY - 35)];
    [leftEyebrowPath addQuadCurveToPoint:CGPointMake(arcCenterX - 10, arcCenterY - 35) controlPoint:CGPointMake(arcCenterX - 25, arcCenterY - 50)];
    leftEyebrowPath.lineWidth = 2;
    [self setLayer:leftEyebrowLayer andWithPath:leftEyebrowPath];
    //    右眉毛
    CAShapeLayer* rightEyebrowLayer = [CAShapeLayer layer];
    UIBezierPath* rightEyebrowPath   = [UIBezierPath bezierPath];
    [rightEyebrowPath moveToPoint:CGPointMake(arcCenterX + 40, arcCenterY - 35)];
    [rightEyebrowPath addQuadCurveToPoint:CGPointMake(arcCenterX + 10, arcCenterY - 35) controlPoint:CGPointMake(arcCenterX + 25, arcCenterY - 50)];
    rightEyebrowPath.lineWidth = 2;
    [self setLayer:rightEyebrowLayer andWithPath:rightEyebrowPath];
    
    //    左眼
    CAShapeLayer* leftEyeLayer = [CAShapeLayer layer];
    UIBezierPath* leftEyePath   = [UIBezierPath bezierPath];
    [leftEyePath moveToPoint:CGPointMake(arcCenterX - 35, arcCenterY - 20)];
    [leftEyePath addQuadCurveToPoint:CGPointMake(arcCenterX - 15, arcCenterY - 20) controlPoint:CGPointMake(arcCenterX - 25, arcCenterY - 30)];
    leftEyePath.lineWidth = 2.5;
    [self setLayer:leftEyeLayer andWithPath:leftEyePath];
    //    右眼
    CAShapeLayer* rightEyeLayer = [CAShapeLayer layer];
    UIBezierPath* rightEyePath   = [UIBezierPath bezierPath];
    [rightEyePath moveToPoint:CGPointMake(arcCenterX + 35, arcCenterY - 20)];
    [rightEyePath addQuadCurveToPoint:CGPointMake(arcCenterX + 15, arcCenterY - 20) controlPoint:CGPointMake(arcCenterX + 25, arcCenterY - 30)];
    rightEyePath.lineWidth = 2.5;
    [self setLayer:rightEyeLayer andWithPath:rightEyePath];
    
    //    左红晕
    CAShapeLayer* leftBallLayer = [CAShapeLayer layer];
    UIBezierPath* leftBallPath   = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(arcCenterX - 42, arcCenterY, 14, 14) cornerRadius:7];
    [self setLayer:leftBallLayer andWithPath:leftBallPath];
    //    右红晕
    CAShapeLayer* rightBallLayer = [CAShapeLayer layer];
    UIBezierPath* rightBallPath   = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(arcCenterX + 28, arcCenterY, 14, 14) cornerRadius:7];
    [self setLayer:rightBallLayer andWithPath:rightBallPath];
    
    //    嘴巴
    CAShapeLayer* mouthLayer = [CAShapeLayer layer];
    UIBezierPath* mouthPath   =  [UIBezierPath bezierPath];
    [mouthPath moveToPoint:CGPointMake(arcCenterX - 13, arcCenterY + 10)];
    [mouthPath addLineToPoint:CGPointMake(arcCenterX + 13, arcCenterY + 10)];
    [mouthPath addCurveToPoint:CGPointMake(arcCenterX - 13, arcCenterY + 10) controlPoint1:CGPointMake(arcCenterX + 13, arcCenterY + 25) controlPoint2:CGPointMake(arcCenterX - 13, arcCenterY + 25)];
    
    [self setLayer:mouthLayer andWithPath:mouthPath];
    //头部36,32,33
    headLayer.fillColor   = [UIColor colorWithRed:36/255 green:32/255 blue:33/255 alpha:1].CGColor;
    headLayer.strokeColor = [UIColor colorWithRed:36/255 green:32/255 blue:33/255 alpha:1].CGColor;
    //    脸部255,229,202
    faceLayer.fillColor   = [UIColor colorWithRed:255/255.0 green:229/255.0 blue:202/255.0 alpha:1].CGColor;
    faceLayer.strokeColor = [UIColor colorWithRed:36/255 green:32/255 blue:33/255 alpha:1].CGColor;
    //左耳朵
    leftEarLayer.fillColor        = [UIColor colorWithRed:255/255.0 green:229/255.0 blue:202/255.0 alpha:1].CGColor;
    leftEarLayer.strokeColor      = [UIColor colorWithRed:36/255 green:32/255 blue:33/255 alpha:1].CGColor;
    //右耳朵
    rightEarLayer.fillColor       = [UIColor colorWithRed:255/255.0 green:229/255.0 blue:202/255.0 alpha:1].CGColor;
    rightEarLayer.strokeColor     = [UIColor colorWithRed:36/255 green:32/255 blue:33/255 alpha:1].CGColor;
    //左眼
    leftEyeLayer.strokeColor      = [UIColor colorWithRed:36/255.0 green:32/255.0 blue:33/255.0 alpha:1].CGColor;
    //右眼
    rightEyeLayer.strokeColor     = [UIColor colorWithRed:36/255.0 green:32/255.0 blue:33/255.0 alpha:1].CGColor;
    //左眉毛
    leftEyebrowLayer.strokeColor  = [UIColor colorWithRed:36/255.0 green:32/255.0 blue:33/255.0 alpha:1].CGColor;
    //右眉毛
    rightEyebrowLayer.strokeColor = [UIColor colorWithRed:36/255.0 green:32/255.0 blue:33/255.0 alpha:1].CGColor;
    //左红晕 251,194,170
    leftBallLayer.fillColor   = [UIColor colorWithRed:251/255.0 green:194/255.0 blue:170/255.0 alpha:1].CGColor;
    leftBallLayer.strokeColor = [UIColor clearColor].CGColor;
    //右红晕
    rightBallLayer.fillColor   = [UIColor colorWithRed:251/255.0 green:194/255.0 blue:170/255.0 alpha:1].CGColor;
    rightBallLayer.strokeColor = [UIColor clearColor].CGColor;
    
    //嘴巴 240,26,41
    mouthLayer.fillColor = [UIColor colorWithRed:240/255.0 green:26/255.0 blue:41/255.0 alpha:1].CGColor;
    mouthLayer.strokeColor = [UIColor colorWithRed:36/255 green:32/255 blue:33/255 alpha:1].CGColor;
}

- (void)addBeardFromPoint:(CGPoint)fromPoint toPoint:(CGPoint)toPoint
{
    CAShapeLayer *beardLayer1 = [CAShapeLayer layer];
    UIBezierPath *beardPath1 = [UIBezierPath bezierPath];
    [beardPath1 moveToPoint:fromPoint];
    [beardPath1 addLineToPoint:toPoint];
    [self setLayer:beardLayer1 andWithPath:beardPath1 ];
}

- (void)setLayer:(CAShapeLayer*)layer andWithPath:(UIBezierPath*)path{
    layer.path =  path.CGPath;
    layer.fillColor = [UIColor clearColor].CGColor;
    layer.strokeColor = [UIColor lightGrayColor].CGColor;
    [self.view.layer addSublayer:layer];
}
@end
