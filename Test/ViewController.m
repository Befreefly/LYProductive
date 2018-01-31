//
//  ViewController.m
//  Test
//
//  Created by LYC on 2018/1/16.
//  Copyright © 2018年 YCLY. All rights reserved.
//

#import "ViewController.h"
#import "TestCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createTableview];
}
-(void)createTableview{
    UITableView * talbeview = [[UITableView alloc] initWithFrame:self.view.bounds];
    talbeview.delegate = self;
    talbeview.dataSource = self;
    [self.view addSubview:talbeview];
    talbeview.estimatedRowHeight = 80.0f;
    talbeview.rowHeight = UITableViewAutomaticDimension;
    
    NSLog(@"====wo shi da shen=======");
    NSLog(@"====大神的宝典========");
    NSLog(@"大神都是磨练出来的");
   
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 30;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * idenfier = @"cell";
    TestCell * cell = [tableView dequeueReusableCellWithIdentifier:idenfier];
    if (!cell) {
        cell = [[TestCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idenfier];
        
    }
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
