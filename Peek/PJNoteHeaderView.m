//
//  PJNoteHeaderView.m
//  Peek
//
//  Created by pjpjpj on 2018/6/19.
//  Copyright © 2018年 #incloud. All rights reserved.
//

#import "PJNoteHeaderView.h"

@implementation PJNoteHeaderView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
    }
    return self;
}

- (void)initView {
    self.backgroundColor = [UIColor clearColor];
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(25, 15, 0, 40)];
    titleLabel.text = @"我的小册";
    titleLabel.font = [UIFont boldSystemFontOfSize:30];
    [self addSubview:titleLabel];
    [titleLabel sizeToFit];
    
    UIButton *searchButton = [[UIButton alloc] initWithFrame:CGRectMake(titleLabel.right + 5, titleLabel.y, 40, 40)];
    [self addSubview:searchButton];
    [searchButton setImage:[UIImage imageNamed:@"search"] forState:UIControlStateNormal];
    [searchButton addTarget:self action:@selector(searchButtonClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *addButton = [[UIButton alloc] initWithFrame:CGRectMake(searchButton.right, searchButton.y, searchButton.width, searchButton.height)];
    [self addSubview:addButton];
    [addButton setImage:[UIImage imageNamed:@"add"] forState:UIControlStateNormal];
    [addButton addTarget:self action:@selector(addButtonClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *avatarButton = [[UIButton alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 40 - 25, 0, 40, 40)];
    avatarButton.centerY = self.centerY;
    [self addSubview:avatarButton];
    [avatarButton addTarget:self action:@selector(avatarBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [avatarButton setImage:[UIImage imageNamed:@"avatar"]
                  forState:UIControlStateNormal];
    avatarButton.layer.cornerRadius = avatarButton.width / 2;
    avatarButton.layer.masksToBounds = YES;
}

- (void)searchButtonClick {
    [PJTapic tap];
}

- (void)addButtonClick {
    [PJTapic tap];
}

- (void)avatarBtnClick {
    [PJTapic select];
    [self.viewdelegate PJNoteHeaderViewAvatarBtnClick];
}

@end
