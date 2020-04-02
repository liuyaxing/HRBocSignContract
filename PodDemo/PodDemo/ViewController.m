//
//  ViewController.m
//  PodDemo
//
//  Created by 毕战路 on 2019/6/19.
//  Copyright © 2019 毕战路. All rights reserved.
//

#import "ViewController.h"
#import <HRBocSignContract/HRBocSignContractInterface.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *bankCodeTF;
@property (weak, nonatomic) IBOutlet UITextField *assureNoTF;

@end

@implementation ViewController

- (void)viewDidLoad
{
    _bankCodeTF.text = @"vx018010000020190718105613091";
    _bankCodeTF.text = @"vx018040000020191211112446840";
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _bankCodeTF.text = @"0bbc75cb-b912-48ae-95d7-e3e013273dcf";
           _assureNoTF.text = @"R68690747";
}
- (IBAction)submitAction:(UIButton *)sender {
    
    if(_bankCodeTF.text.length>0){
        
        
        [[HRDomain instance] setSignHost:@"https://zjapi.hrfax.cn:29088" andFaceHost:@"http://114.55.55.41:8998"];
        
        [[HRBocSignContractInterface sharedUtil] signContractWithOrderNo:_bankCodeTF.text assurerNo:_assureNoTF.text signComplete:^(BOOL isCompleted, NSDictionary *signCompleteDic) {
            
            NSLog(@"signCompleteDic======%@",signCompleteDic);
            
        } error:^(NSDictionary *errorDic) {
            
            NSLog(@"errorDic======%@",errorDic);
            
        }];
    }
}


@end
