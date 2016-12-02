# NSDictionary-JKXML
 NSDictionary-JKXML,A Category for NSDictionary Converter To XML String 

# Demo

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


    <name>zhangsan</name><data1><secondname>zzzz</secondname></data1><data1>cat1</data1><data1>cat2</data1><data1>cat3</data1><data1>data2</data1><data1>data3</data1><data1>data4</data1>
    ==============================
    <?xml version="1.0" encoding="utf-8"?><dict><name>zhangsan</name><data1><secondname>zzzz</secondname></data1><data1>cat1</data1><data1>cat2</data1><data1>cat3</data1><data1>data2</data1><data1>data3</data1><data1>data4</data1></dict>
    ==============================
    <?xml version="1.0"?><dict><name>zhangsan</name><data1><secondname>zzzz</secondname></data1><data1>cat1</data1><data1>cat2</data1><data1>cat3</data1><data1>data2</data1><data1>data3</data1><data1>data4</data1></dict>
     ==============================
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
    <key>data1</key>
    <array>
    <dict>
    <key>secondname</key>
    <string>zzzz</string>
    </dict>
    <array>
    <string>cat1</string>
    <string>cat2</string>
    <string>cat3</string>
    </array>
    <string>data2</string>
    <string>data3</string>
    <string>data4</string>
    </array>
    <key>name</key>
    <string>zhangsan</string>
    </dict>
    </plist>

##更多Catgories
https://github.com/shaojiankui/JKCategories
