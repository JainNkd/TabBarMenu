//
//  ViewController.m
//  TabbarApplication
//
//  Created by Naveen Kumar Dungarwal on 11/11/14.
//  Copyright (c) 2014 Naveen Kumar Dungarwal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    BOOL myBool = [defaults boolForKey:@"test"];
    
    if(myBool)
    {
        [self performSegueWithIdentifier:@"StartView" sender:nil];
    }
    else
    {
        [defaults setBool:YES forKey:@"test"];
//        [self performSegueWithIdentifier:@"SignupView" sender:nil];
    }
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
