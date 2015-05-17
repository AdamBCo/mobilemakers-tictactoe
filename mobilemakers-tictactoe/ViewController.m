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
@property NSObject *winner;


@end

@implementation ViewController

//a - empy b - first player c - second player
- (void)viewDidLoad {
    [super viewDidLoad];
    self.goNumber = 0;
    self.winner = 0;
    self.gameStateArray = [[NSMutableArray alloc]init];
    self.gameStateArray = [NSMutableArray arrayWithObjects:@0,@0,@0,@0,@0,@0,@0,@0,@0, nil];
    self.winStateArray  = [NSMutableArray new];
    self.winStateArray  = [NSMutableArray arrayWithObjects:
                          [NSMutableArray arrayWithObjects:@[@0,@1,@2], nil],
                          [NSMutableArray arrayWithObjects:@[@3,@4,@5], nil],
                          [NSMutableArray arrayWithObjects:@[@6,@7,@8], nil],
                          [NSMutableArray arrayWithObjects:@[@0,@2,@6], nil],
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
        [self.gameStateArray replaceObjectAtIndex:[sender tag] withObject:@2]; //for now, but change later
    }
    self.goNumber = self.goNumber + 1;

}

- (IBAction)testButton:(id)sender {
    NSLog(@"%@",self.gameStateArray);

//    //test for loop
//    for (int i = 1; i <= 10; i++) {
//        NSLog(@"%d",i);
//    }

//    if (self.gameStateArray[0] == self.gameStateArray[1] && self.gameStateArray[1] == self.gameStateArray[2] && self.gameStateArray[0] != 0) {
//        NSLog(@"fuck yeah");
//    } else {
//        NSLog(@"meh");
//    }

    for (NSObject *ugh in self.winStateArray) {
        if (self.gameStateArray[(int)self.winStateArray[0]] == self.gameStateArray[(int)self.winStateArray[1]] && self.gameStateArray[(int)self.winStateArray[1]] == self.gameStateArray[(int)self.winStateArray[2]] && self.gameStateArray[(int)self.winStateArray[0]] != 0) {
            NSLog(@"%@",ugh);
        } else {
            NSLog(@"failwhale");
        }

    }




}

@end
