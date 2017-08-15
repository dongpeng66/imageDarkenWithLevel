//
//  ViewController.m
//  imageDarkenWithLevel
//
//  Created by 人众 on 2017/8/15.
//
//

#import "ViewController.h"
#import "UIImage+ImageDarken.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *sourceImage = [UIImage imageNamed:@"girl"];
    UIImageView *view0 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height/2 - 20)];
    [view0 setImage:sourceImage];
    [self.view addSubview:view0];
    
    UIImageView *view1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 20 + self.view.frame.size.height/2, self.view.frame.size.width, self.view.frame.size.height/2 - 20)];
    view1.image = [sourceImage imageDarkenWithLevel:0.4];
    [self.view addSubview:view1];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
