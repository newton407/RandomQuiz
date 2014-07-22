//
//  Answer.h
//  QuestionAndAnswer

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Question;

@interface Answer : NSManagedObject

@property (nonatomic, retain) NSString * ansContent;
@property (nonatomic, retain) Question *question;

@end
