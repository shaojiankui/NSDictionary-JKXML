//
//  ViewController.m
//  NSDictionary-JKXML
//
//  Created by Jakey on 2016/12/2.
//  Copyright © 2016年 Jakey. All rights reserved.
//

#import "ViewController.h"
#import "NSDictionary+JKXML.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSDictionary *dic = @{@"name":@"zhangsan",@"data1":@[@{@"secondname":@"zzzz"},@[@"cat1",@"cat2",@"cat3"],@"data2",@"data3",@"data4"]};
    
    //将NSDictionary转换成XML字符串 不带XML声明 不带根节点
    NSString *xml = [dic jk_XMLString];
    //将NSDictionary转换成XML字符串, 默认 <?xml version=\"1.0\" encoding=\"utf-8\"?> 声明   自定义根节点
    NSString *xml2 = [dic jk_XMLStringDefaultDeclarationWithRootElement:@"dict"];
    //将NSDictionary转换成XML字符串, 自定义根节点  自定义xml声明
    NSString *xml3 = [dic jk_XMLStringWithRootElement:@"dict" declaration:@"<?xml version=\"1.0\"?>"];
    //转换为plist
    NSString *plist = [dic jk_plistString];


    NSLog(@"%@",xml);
    NSLog(@"==============================");
    NSLog(@"%@",xml2);
    NSLog(@"==============================");
    NSLog(@"%@",xml3);
    NSLog(@"==============================");
    NSLog(@"%@",plist);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
