//
//  ABCAddToDoItemViewController.m
//  ToDoListOne
//
//  Created by skewrain on 13-12-9.
//  Copyright (c) 2013年 skewrain. All rights reserved.
//

#import "ABCAddToDoItemViewController.h"

@interface ABCAddToDoItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation ABCAddToDoItemViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if(sender != self.doneButton) return ;
    if(self.textField.text.length > 0){
        self.toDoItem = [[ABCToDoItem alloc]init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
