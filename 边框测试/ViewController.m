//
//  ViewController.m
//  边框测试
//
//  Created by forwonder on 2021/3/23.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imageView.layer.borderWidth = 1;//设置边框大小
    self.imageView.layer.borderColor = [UIColor redColor].CGColor;//设置边框颜色
    [self.imageView.layer setCornerRadius:10];//设置四个叫都为圆角10
    
    self.button.layer.borderWidth = 1;//设置边框大小
    self.button.layer.borderColor = [UIColor redColor].CGColor;//设置边框颜色
    self.button.layer.masksToBounds = YES;//是否遮罩边界
    CGFloat radius = 10; // 圆角大小
    UIRectCorner corner = UIRectCornerBottomLeft | UIRectCornerTopRight; // 圆角位置
    UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:self.button.bounds byRoundingCorners:corner cornerRadii:CGSizeMake(radius, radius)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.button.bounds;
    maskLayer.path = path.CGPath;
    self.button.layer.mask = maskLayer;
}


@end
