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
@property NSMutableArray *testStateArray;
@property NSMutableArray *winStateArray;


@end

@implementation ViewController

//a - empy b - first player c - second player
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gameStateArray = [NSMutableArray new];
    self.gameStateArray = [NSMutableArray arrayWithObjects:@"a",@"a",@"a",@"a",@"a",@"a",@"a",@"a",@"a", nil];

    self.testStateArray = [[NSMutableArray alloc] initWithCapacity:9];
    self.testStateArray = [NSMutableArray arrayWithObjects:@"b",@"b",@"b",@"b",@"b",@"b",@"b",@"b",@"b", nil];

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


    //test
    NSLog(@"%@",self.gameStateArray);
}

- (IBAction)onGameButtonPressed:(id)sender {
    NSLog(@"%@",[sender currentTitle]);

    [self.gameStateArray replaceObjectAtIndex:[sender tag] withObject:@"b"];
    NSLog(@"%@",self.gameStateArray);

    //ugh
    if (self.gameStateArray == self.testStateArray) {
        NSLog(@"It can be done");
    } else {
        NSLog(@"Keep tryin'");
    }

}

@end
