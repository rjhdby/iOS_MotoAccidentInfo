//
//  MessageCell.m
//  Moto Accident Info
//
//  Created by Громов Андрей on 30.01.16.
//  Copyright © 2016 motoAccident. All rights reserved.
//

#import "MessageCellWithoutOwner.h"
#import "Message.h"
#import "AccidentTools.h"

@implementation MessageCellWithoutOwner {
@private
    UILabel *_textLabel;
}

@synthesize textLabel = _textLabel;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)decorateWith:(Message *)message {

    _timeLabel.text = [AccidentTools formattedAge:message.time];
    NSString *pad = [[NSString string] stringByPaddingToLength:[_timeLabel.text length]*2 withString:@"\u2002" startingAtIndex:0];
    _textLabel.text  = [NSString stringWithFormat:@"%@%@\u200c", message.text, pad];
    _innerView.image = [[UIImage imageNamed:@"message"] stretchableImageWithLeftCapWidth:24 topCapHeight:19];
}

@end
