
//  ViewController.m
//  QuestionAndAnswer






#import "ViewController.h"
#import "questionCell.h"
#import "AppDelegate.h"
#import "Question.h"
#import "Answer.h"
#import "DetailViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"Questions";
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    //if ([self.questionArray count] > 0) {
    //    [self.questionArray removeAllObjects];
    //}
    


}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    NSLog(@"numberOfRowsInSection: %i", [self.questionArray count]);
    
    return [self.questionArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    questionCell *cell = [tableView dequeueReusableCellWithIdentifier:@"questionCell" forIndexPath:indexPath];
    
    Question *thisQuestion = [self.questionArray objectAtIndex:indexPath.row];
    
    cell.questionLabel.text = thisQuestion.questContent;
    
    return cell;
    
    NSLog(@"Populating TableView Cell: cellForRowAtIndexPath");
    
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Question *thisQuestion = [self.questionArray objectAtIndex:indexPath.row];
    //Answer *thisAnswer = [self.a]
    
    DetailViewController *detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    
    detailViewController.question = thisQuestion;
    //detailViewController.answer
    
    [self.navigationController pushViewController:detailViewController animated:YES];
    
   NSLog(@"Navigation Controller pushed to DetailViewController");
    
}

@end
