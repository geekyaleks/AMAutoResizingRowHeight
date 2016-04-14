//
//  ViewController.m
//  resizing_autolayout
//
//  Created by Aleksandar Matijaca on 2016-01-21.
//  Copyright © 2016 TD Bank. All rights reserved.
//

#import "AMViewController.h"
#import "AMMyCellTableViewCell.h"

@interface AMViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonnull, nonatomic, strong) IBOutlet UITableView *tableView;

@end

@implementation AMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.rowHeight = UITableViewAutomaticDimension;   // turns on automatic height
    self.tableView.estimatedRowHeight = 180.0;                  // nice to have for height - prevents initial flicker when scrolling (I think).
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    

    if (indexPath.row <= 2) {
        AMMyCellTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"MyCellEqualTopAndBottom"];
        if (cell == nil) {
            cell = [[AMMyCellTableViewCell alloc] init];
        }
        
        switch (indexPath.row) {
                
            case 0: {
                cell.label_a.text = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel dui rutrum, tempor odio vitae, aliquet velit. Ut ac risus vestibulum, ultricies nunc vitae, tristique nulla. Fusce urna nulla, malesuada in condimentum ac, pellentesque in ex. Aliquam erat volutpat. Morbi id urna malesuada, sodales ligula a, tempus ipsum. In rutrum pharetra est, eget ornare quam sodales ac. Pellentesque cursus ornare augue eget elementum. Donec vestibulum, urna vel suscipit ornare, elit leo eleifend leo, vel rutrum lorem nisl et quam. Suspendisse at enim ac sapien dignissim scelerisque.";
            }
                break;
            case 1: {
                cell.label_a.text = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel dui rutrum, tempor odio vitae, aliquet velit. Ut ac risus vestibulum, ultricies nunc vitae, tristique nulla. elit leo eleifend leo, vel rutrum lorem nisl et quam. Suspendisse at enim ac sapien dignissim scelerisque.";
            }
                break;
            case 2: {
                cell.label_a.text = @"Lorem ipsum.";
            }
                break;
                
            default:
                break;
        }
        
        cell.label_b.text = @"top and bottom cell constraints are FIXED and equal - the middle space between labels is FLEXIBLE";
        
        return cell;
    } else  {

        AMMyCellTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"MyCellFixedMiddleTopAndBottomFlexible"];
        if (cell == nil) {
            cell = [[AMMyCellTableViewCell alloc] init];
        }

        switch (indexPath.row) {
            case 3: {
                cell.label_a.text = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel dui rutrum, tempor odio vitae, aliquet velit. Ut ac risus vestibulum, ultricies nunc vitae, tristique nulla. Fusce urna nulla, malesuada in condimentum ac, pellentesque in ex. Aliquam erat volutpat. Morbi id urna malesuada, sodales ligula a, tempus ipsum. In rutrum pharetra est, eget ornare quam sodales ac. Pellentesque cursus ornare augue eget elementum. Donec vestibulum, urna vel suscipit ornare, elit leo eleifend leo, vel rutrum lorem nisl et quam. Suspendisse at enim ac sapien dignissim scelerisque.";
            }
                break;
            case 4: {
                cell.label_a.text = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel dui rutrum, tempor odio vitae, aliquet velit. Ut ac risus vestibulum, ultricies nunc vitae, tristique nulla. elit leo eleifend leo, vel rutrum lorem nisl et quam. Suspendisse at enim ac sapien dignissim scelerisque.";
            }
                break;
            case 5: {
                cell.label_a.text = @"Lorem ipsum.";
            }
                break;
                
            default:
                break;
        }
        cell.label_b.text = @"top and bottom cell constraints are FIXED and equal - space between labels is FIXED";
        
        return cell;
    }
    
    return nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
