//
//  Question.h
//  QuestionAndAnswer
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Answer;

@interface Question : NSManagedObject

@property (nonatomic, retain) NSString * questContent;
@property (nonatomic, retain) Answer *answer;


@end


@interface Question (CoreDataGeneratedAccessors)

- (void)addAnswersObject:(NSManagedObject *)value;
- (void)removeAnswersObject:(NSManagedObject *)value;
- (void)addAnswers:(NSSet *)values;
- (void)removeAnswers:(NSSet *)values;

@end
