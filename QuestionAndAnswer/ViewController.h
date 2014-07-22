
//  ViewController.h
//  QuestionAndAnswer
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>


@property (nonatomic, strong) NSMutableArray *questionArray;
@property (weak, nonatomic) IBOutlet UITableView *questionTable;


//@property (nonatomic, weak) IBOutlet UITableView *questionTable;

@end
