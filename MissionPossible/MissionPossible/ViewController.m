//
//  ViewController.m
//  MissionPossible
//
//  Created by Robert Pearce on 9/21/15.
//  Copyright © 2015 Robert Pearce. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITextView  *missionTextView;
@property (nonatomic, weak) IBOutlet UITextField *nameTextField;

@end

@implementation ViewController

#pragma mark - Interactivity Methods

- (IBAction)viewMissionButtonPressed:(id)sender {
    NSLog(@"view mission");
    NSString *username = _nameTextField.text;
    _missionTextView.text = [NSString stringWithFormat:@"%@, your mission, should you choose to accept it, is to enter the vault. Once inside, there are 3 security systems in operation. Disable each system in order from left to right in order to save the world. This message will self destruct in 15 seconds. Good luck, %@!",username,username];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return true;
}

#pragma mark - Life Cycle Methods

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
