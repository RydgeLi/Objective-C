//
//  psychologistViewController.m
//  psychologist
//
//  Created by 李宇杰 on 13-8-11.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "psychologistViewController.h"
#import "HappyViewController.h"
@interface psychologistViewController ()
@property(nonatomic)int diagnosis;//诊断结果
@end

@implementation psychologistViewController

-(void)setAndShowDiagnosis:(int)diagnosis{
    self.diagnosis=diagnosis;
    [self performSegueWithIdentifier:@"ShowDiagnosis" sender:self];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"ShowDiagnosis"]){
        [segue.destinationViewController setHappiness:self.diagnosis];}
    else if([segue.identifier isEqualToString:@"Celebrity"])
        [segue.destinationViewController setHappiness:100];
    else if ([segue.identifier isEqualToString:@"Problem"])
        [segue.destinationViewController setHappiness:20];
    else if ([segue.identifier isEqualToString:@"TV"])
        [segue.destinationViewController setHappiness:50];
}
- (IBAction)fly {
    [self setAndShowDiagnosis:85];
}

- (IBAction)apple {
    [self setAndShowDiagnosis:100];
}

- (IBAction)dragon {
    [self setAndShowDiagnosis:20];
}


@end
