//
//  ViewController.m
//  mobilemakers-tictactoe
//
//  Created by John McClelland on 5/14/15.
//  Copyright (c) 2015 John McClelland. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *gameButton;

@property NSMutableArray *gameStateArray;
@property NSMutableArray *winStateArray;

@property int goNumber;
@property NSInteger winner;


@end

@implementation ViewController

//a - empy b - first player c - second player
- (void)viewDidLoad {
    [super viewDidLoad];
    self.goNumber = 0;
    self.winner = 0;
    self.gameStateArray = [NSMutableArray new];
    self.gameStateArray = [NSMutableArray arrayWithObjects:@0,@0,@0,@0,@0,@0,@0,@0,@0, nil];

    self.winStateArray = [NSMutableArray new];
    self.winStateArray = [NSMutableArray arrayWithObjects:
                          [NSMutableArray arrayWithObjects:@[@0,@1,@2], nil],
                          [NSMutableArray arrayWithObjects:@[@3,@4,@5], nil],
                          [NSMutableArray arrayWithObjects:@[@6,@7,@8], nil],
                          [NSMutableArray arrayWithObjects:@[@0,@3,@6], nil],
                          [NSMutableArray arrayWithObjects:@[@1,@4,@7], nil],
                          [NSMutableArray arrayWithObjects:@[@2,@5,@8], nil],
                          [NSMutableArray arrayWithObjects:@[@0,@4,@8], nil],
                          [NSMutableArray arrayWithObjects:@[@2,@4,@6], nil],nil];
}

- (IBAction)onGameButtonPressed:(id)sender {
    NSLog(@"%@",[sender currentTitle]);

    //alternating turns
    if (self.goNumber % 2 == 0) {
        [self.gameStateArray replaceObjectAtIndex:[sender tag] withObject:@1];
    } else {
        [self.gameStateArray replaceObjectAtIndex:[sender tag] withObject:@2];
    }
    self.goNumber = self.goNumber + 1;

}

- (IBAction)testButton:(id)sender {
    NSLog(@"%@",self.gameStateArray);



    //test for loop
    for (int i = 1; i <= 10; i++) {
        NSLog(@"%d",i);
    }

    //test for in loop
    int derp = (int)self.gameStateArray[1];
    NSLog(@"%i",derp);
}


@end
