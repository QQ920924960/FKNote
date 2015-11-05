/************************   reveal的破解办法   **********************/
1、    退出plist对应的APP
2、    在终端中运行killall cfprefsd杀掉所有的cfprefsd进程
3、    删除plist：  ~/Library/Preferences/com.ittybittyapps.Reveal.plist
4、    再运行APP，此时新的plist就会起作用了
/************************   reveal的破解办法   **********************/




/************************   常用的NSString和NSMutableString方法   **********************/

NSString方法
+(id) stringWithContentsOfFile:path encoding:enc error:err
创建一个新字符串并将其设置为path指定的文件的内容，使用字符编码enc，如果非零，则返回err中错误
+(id) stringWithContentsOfURL:url encoding:enc error:err
创建一个新的字符串，并将其设置为url的内容，使用字符编码enc，如果非零，则返回err中的错误
+(id) string
创建一个新的空字符串
+(id) stringWithString:nsstring
创建一个新的字符串，并将其设置为nsstring
-(id)initWithString:nsstring
将分配的字符串设置为nsstring
-(id) initWithContentsOfFile:path encoding:enc error:err
将字符串设置为path制定的文件的内容
-(id) initWithContentsOfURL:url encoding:enc error:err
将字符串设置为url(NSURL *)url的内容，使用字符编码enc，如果非零，则返回err中的错误
-(id) (UNSIgned int)length
返回字符串中的字符数目
-(unichar)characterAtIndex:i
返回索引i的Unicode字符
-(NSString *)substringFromIndex:i
返回从i开始知道结尾的子字符串
-(NSString *)substringWithRange:range
根据指定范围返回子字符串
-(NSString *)substringToIndex:i
返回从该字符串开始到索i的子字符串
-(NSComparator *)caseInsensitiveCompare:nsstring
比较两个字符串，忽略大小写
-(NSComparator *)compare:nsstring
比较两个字符串
-(BOOL)hasPrefix:nsstring
测试字符串是否以nsstring开始
-(BOOL)hasSuffix:nsstring
测试字符串是否以nsstrng结尾
-(BOOL)isEqualToString:nsstring
测试两个字符串是否相等
-(NSString *) capitalizedString
返回每个单词首字母大写的字符串（每个单词的其余字母转换为小写）
-(NSString *)lowercaseString
返回转换为小写的字符串
-(NSString *)uppercaseString
返回转换为大写的字符串
-(const char*)UTF8String
返回转换为UIF－8字符串的字符串
-(double)doubleValue
返回转换为double的字符串
-(float)floatValue
返回转换为浮点值的字符串
-(NSInteger)integerValue
返回转换为NSInteger整数的字符串
-(int)intValue
返回转换为整数的字符串


NSMutableString方法
+(id) stringWithCapacity:size
创建一个字符串，初始包含size的字符
-(id) initWithCapacity:size
使用初始容量为size的字符串来初始化字符串
-(void) setString:nsstring
将字符串设置为nsstring
-(void) appendString:nsstring
在接收者的末尾附加nsstring
-(void) deleteCharactersInRange:range
删除指定range中的字符
-(void) insertString:nsstring atIndex:i
以索引i为起始位置插入nsstring
-(void) replaceCharactersInRange:range withString:nsstring
使用nsstring替换range指定的字符
-(void) replaceOccurrencesOf
String:nsstring withString:
nsstring2 options:opts range:range

根据选项opts。使用指定range中 的nsstring2替换所有的nsstring。选项可以包括NSBackwardsSearch（从范围的结尾开始搜 索）NSAnchoredSearch(nsstring必须匹配范围的开始)，NSLiteralSearch(执行逐字节比较以及 NSCaceInsensitiveSearch的按位或组合)




NSMutableString

[aString substringToIndex:([aString length]-1)];//字符串删除最后一个字符

//字符串删除最后一个字符

NSRange range = {0,1};

[aStr deleteCharactersInRange:range];


NSString是不可变的，意思是他声明的对象我们不可以改变，如果要改变，可以使用它的子类：NSMutableString



你可以使用类方法：stringWithCapacity来创建一个新的NSMutableString,声明如下：



*  (id) stringWithCapacity: (unsigned) capacity:



可按如下方法声明一个新的可变字符串：

NSString *str1;

Str1 = [NSMutableString stringWithCapacity:42];



可以使用appendString或appendFormat来对可变字符串操作：

- （void）appendString: (Nsstring *) aString;

-  (void) appendFormat: (NSString *) Format;



appendString 接受参数aString,然后将其复制到接受对象的末尾。

appendFormat类似，他将格式化的字符串附加在接受对象的末尾，而不是创建新的对象。



EXP:

NSMutableString *string;

string = [NSMutableString stringWithcapacity:50];

[string appendString: @”hello,there”];

[string appendFormat: @”human %d!”, 39];

这段代码的string最后被赋值为：hello,there human 39!



你还可以使用deleteCharactersInRange:方法来删除字符串中的字符：

- （void） deleteCharactersInRange: (NSRange) range;



通常将deleteCharactersInRange: 和rangeOfString:连在一起使用，NSMutableString可以使用NSString的全部功能，包括rangeOfString:、字符串比较和其他任何功能。



例如，你列了一个所有朋友列表，你突然又不喜欢Jack了，想把他从朋友列表里删除：



//朋友列表初始化

NSMutableString *friends;

friends = [NSMutableString stringWithcapacity: 50];

[friends appendString: @”level fang jack even”];



//找到jack并且删除

NSRange jackRange;

jackRange = [friends rangeOfString: @”jack”];

jackRange.length++; //eat the space that follows

[friends deleteCharactersInRange: jackRange];


/////转自：http://hi.baidu.com/herozoo/blog/item/c64e47f919893714d9f9fd88.html/////


最近写代码用到比较多的字符串操作的，所以找到一个objective-c中字符串操作的汇总，和大家分享！


1
//创建字符串对象数组
NSArray *array = [str componentsSeparatedByString:@"@"];//就是以@为标示 输出看看啦

int count=[array count];
int i;
for(i=0;i<count;i=i+4)
{
    printf("%i:  %s\n",i,[[array objectAtIndex:i] UTF8String]);
}

2  可变的字符串类
NSMutableString *song=[[NSMutableString alloc] init];
[song appendString:@"Deaf Leppard"];
printf("%s\n",[song UTF8String]);

NSRange range=[song rangeOfString:@"Deaf"];//获取字符串"Deaf"字串的范围
[song replaceCharactersInRange:range withString:@"Def"];//替换
printf("%s\n",[song UTF8String]);

[song insertString:@"Animal by " atIndex:0];
printf("%s\n",[song UTF8String]);

[song release];

3
字典加数组操作
NSArray *keys=[@"one two three" componentsSeparatedByString:@" "];
NSArray *value=[@"two bravo a" componentsSeparatedByString:@" "];
NSDictionary *dic=[[NSDictionary alloc] initWithObjects:value forKeys:keys];
printf("%s\n",[[dic description] UTF8String]);



//一、NSString


//1、创建常量字符串。
NSString *astring = @"This is a String!";


//2、创建空字符串，给予赋值。

NSString *astring = [[NSString alloc] init];
astring = @"This is a String!";
[astring release];
NSLog(@"astring:%@",astring);



//3、在以上方法中，提升速度:initWithString方法

NSString *astring = [[NSString alloc] initWithString:@"This is a String!"];
NSLog(@"astring:%@",astring);
[astring release];



//4、用标准c创建字符串:initWithCString方法

char *Cstring = "This is a String!";
NSString *astring = [[NSString alloc] initWithCString:Cstring];
NSLog(@"astring:%@",astring);
[astring release];



//5、创建格式化字符串:占位符（由一个%加一个字符组成）

int i = 1;
int j = 2;
NSString *astring = [[NSString alloc] initWithString:[NSString stringWithFormat:@"%d.This is %i string!",i,j]];
NSLog(@"astring:%@",astring);
[astring release];



//6、创建临时字符串

NSString *astring;
astring = [NSString stringWithCString:"This is a temporary string"];
NSLog(@"astring:%@",astring);






NSString *path = @"astring.text";
NSString *astring = [[NSString alloc] initWithContentsOfFile:path];
NSLog(@"astring:%@",astring);
[astring release];





NSString *astring = [[NSString alloc] initWithString:@"This is a String!"];
NSLog(@"astring:%@",astring);
NSString *path = @"astring.text";
[astring writeToFile: path atomically: YES];
[astring release];






//用C比较:strcmp函数

char string1[] = "string!";
char string2[] = "string!";
if(strcmp(string1, string2) = = 0)
{
    NSLog(@"1");
}



//isEqualToString方法
NSString *astring01 = @"This is a String!";
NSString *astring02 = @"This is a String!";
BOOL result = [astring01 isEqualToString:astring02];
NSLog(@"result:%d",result);




//compare方法(comparer返回的三种值)
NSString *astring01 = @"This is a String!";
NSString *astring02 = @"This is a String!";
BOOL result = [astring01 compare:astring02] = = NSOrderedSame;
NSLog(@"result:%d",result);
//NSOrderedSame判断两者内容是否相同




NSString *astring01 = @"This is a String!";
NSString *astring02 = @"this is a String!";
BOOL result = [astring01 compare:astring02] = = NSOrderedAscending;
NSLog(@"result:%d",result);
//NSOrderedAscending判断两对象值的大小(按字母顺序进行比较，astring02大于astring01为真)



NSString *astring01 = @"this is a String!";
NSString *astring02 = @"This is a String!";
BOOL result = [astring01 compare:astring02] = = NSOrderedDescending;
NSLog(@"result:%d",result);
//NSOrderedDescending判断两对象值的大小(按字母顺序进行比较，astring02小于astring01为真)



//不考虑大小写比较字符串1
NSString *astring01 = @"this is a String!";
NSString *astring02 = @"This is a String!";
BOOL result = [astring01 caseInsensitiveCompare:astring02] = = NSOrderedSame;
NSLog(@"result:%d",result);
//NSOrderedDescending判断两对象值的大小(按字母顺序进行比较，astring02小于astring01为真)



//不考虑大小写比较字符串2
NSString *astring01 = @"this is a String!";
NSString *astring02 = @"This is a String!";
BOOL result = [astring01 compare:astring02
                         options:NSCaseInsensitiveSearch | NSNumericSearch] = = NSOrderedSame;
NSLog(@"result:%d",result);

//NSCaseInsensitiveSearch:不区分大小写比较 NSLiteralSearch:进行完全比较，区分大小写 NSNumericSearch:比较字符串的字符个数，而不是字符值。




NSString *string1 = @"A String";
NSString *string2 = @"String";
NSLog(@"string1:%@",[string1 uppercaseString]);//大写
NSLog(@"string2:%@",[string2 lowercaseString]);//小写
NSLog(@"string2:%@",[string2 capitalizedString]);//首字母大小




NSString *string1 = @"This is a string";
NSString *string2 = @"string";
NSRange range = [string1 rangeOfString:string2];
int location = range.location;
int leight = range.length;
NSString *astring = [[NSString alloc] initWithString:[NSString stringWithFormat:@"Location:%i,Leight:%i",location,leight]];
NSLog(@"astring:%@",astring);
[astring release];




//-substringToIndex: 从字符串的开头一直截取到指定的位置，但不包括该位置的字符
NSString *string1 = @"This is a string";
NSString *string2 = [string1 substringToIndex:3];
NSLog(@"string2:%@",string2);




//-substringFromIndex: 以指定位置开始（包括指定位置的字符），并包括之后的全部字符
NSString *string1 = @"This is a string";
NSString *string2 = [string1 substringFromIndex:3];
NSLog(@"string2:%@",string2);




//-substringWithRange: //按照所给出的位置，长度，任意地从字符串中截取子串
NSString *string1 = @"This is a string";
NSString *string2 = [string1 substringWithRange:NSMakeRange(0, 4)];
NSLog(@"string2:%@",string2);


//扩展路径

NSString *Path = @"~/NSData.txt";
NSString *absolutePath = [Path stringByExpandingTildeInPath];
NSLog(@"absolutePath:%@",absolutePath);
NSLog(@"Path:%@",[absolutePath stringByAbbreviatingWithTildeInPath]);



//文件扩展名
NSString *Path = @"~/NSData.txt";
NSLog(@"Extension:%@",[Path pathExtension]);







//stringWithCapacity:
NSMutableString *String;
String = [NSMutableString stringWithCapacity:40];




//appendString: and appendFormat:

NSMutableString *String1 = [[NSMutableString alloc] initWithString:@"This is a NSMutableString"];
//[String1 appendString:@", I will be adding some character"];
[String1 appendFormat:[NSString stringWithFormat:@", I will be adding some character"]];
NSLog(@"String1:%@",String1);
*/





//-insertString: atIndex:
NSMutableString *String1 = [[NSMutableString alloc] initWithString:@"This is a NSMutableString"];
[String1 insertString:@"Hi! " atIndex:0];
NSLog(@"String1:%@",String1);





//-setString:
NSMutableString *String1 = [[NSMutableString alloc] initWithString:@"This is a NSMutableString"];
[String1 setString:@"Hello Word!"];
NSLog(@"String1:%@",String1);





//-setString:
NSMutableString *String1 = [[NSMutableString alloc] initWithString:@"This is a NSMutableString"];
[String1 replaceCharactersInRange:NSMakeRange(0, 4) withString:@"That"];
NSLog(@"String1:%@",String1);




//01：检查字符串是否以另一个字符串开头- (BOOL) hasPrefix: (NSString *) aString;
NSString *String1 = @"NSStringInformation.txt";
[String1 hasPrefix:@"NSString"] = = 1 ?  NSLog(@"YES") : NSLog(@"NO");
[String1 hasSuffix:@".txt"] = = 1 ?  NSLog(@"YES") : NSLog(@"NO");

//02：查找字符串某处是否包含其它字符串 - (NSRange) rangeOfString: (NSString *) aString，这一点前面在串中搜索子串用到过;






NSArray *array = [[NSArray alloc] initWithObjects:
                  @"One",@"Two",@"Three",@"Four",nil];

self.dataArray = array;
[array release];

//- (unsigned) Count;数组所包含对象个数；
NSLog(@"self.dataArray cound:%d",[self.dataArray count]);

//- (id) objectAtIndex: (unsigned int) index;获取指定索引处的对象;
NSLog(@"self.dataArray cound 2:%@",[self.dataArray objectAtIndex:2]);




//arrayWithArray:
NSArray *array1 = [[NSArray alloc] init];
NSMutableArray *MutableArray = [[NSMutableArray alloc] init];
NSArray *array = [NSArray arrayWithObjects:
                  @"a",@"b",@"c",nil];
NSLog(@"array:%@",array);
MutableArray = [NSMutableArray arrayWithArray:array];
NSLog(@"MutableArray:%@",MutableArray);

array1 = [NSArray arrayWithArray:array];
NSLog(@"array1:%@",array1);


//Copy

//id obj;
NSMutableArray *newArray = [[NSMutableArray alloc] init];
NSArray *oldArray = [NSArray arrayWithObjects:
                     @"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",nil];

NSLog(@"oldArray:%@",oldArray);
for(int i = 0; i < [oldArray count]; i++)
{
    obj = [[oldArray objectAtIndex:i] copy];
    [newArray addObject: obj];
}
//
NSLog(@"newArray:%@", newArray);
[newArray release];


//快速枚举

//NSMutableArray *newArray = [[NSMutableArray alloc] init];
NSArray *oldArray = [NSArray arrayWithObjects:
                     @"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",nil];
NSLog(@"oldArray:%@",oldArray);

for(id obj in oldArray)
{
    [newArray addObject: obj];
}
//
NSLog(@"newArray:%@", newArray);
[newArray release];


//Deep copy

NSMutableArray *newArray = [[NSMutableArray alloc] init];
NSArray *oldArray = [NSArray arrayWithObjects:
                     @"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",nil];
NSLog(@"oldArray:%@",oldArray);
newArray = (NSMutableArray*)CFPropertyListCreateDeepCopy(kCFAllocatorDefault, (CFPropertyListRef)oldArray, kCFPropertyListMutableContainers);
NSLog(@"newArray:%@", newArray);
[newArray release];


//Copy and sort

NSMutableArray *newArray = [[NSMutableArray alloc] init];
NSArray *oldArray = [NSArray arrayWithObjects:
                     @"b",@"a",@"e",@"d",@"c",@"f",@"h",@"g",nil];
NSLog(@"oldArray:%@",oldArray);
NSEnumerator *enumerator;
enumerator = [oldArray objectEnumerator];
id obj;
while(obj = [enumerator nextObject])
{
    [newArray addObject: obj];
}
[newArray sortUsingSelector:@selector(compare:)];
NSLog(@"newArray:%@", newArray);
[newArray release];





//从字符串分割到数组－ componentsSeparatedByString:
NSString *string = [[NSString alloc] initWithString:@"One,Two,Three,Four"];
NSLog(@"string:%@",string);
NSArray *array = [string componentsSeparatedByString:@","];
NSLog(@"array:%@",array);
[string release];


//从数组合并元素到字符串- componentsJoinedByString:
NSArray *array = [[NSArray alloc] initWithObjects:@"One",@"Two",@"Three",@"Four",nil];
NSString *string = [array componentsJoinedByString:@","];
NSLog(@"string:%@",string);





NSArray *array;
array = [NSMutableArray arrayWithCapacity:20];




//- (void) addObject: (id) anObject;
NSMutableArray *array = [NSMutableArray arrayWithObjects:
                         @"One",@"Two",@"Three",nil];
[array addObject:@"Four"];
NSLog(@"array:%@",array);




//-(void) removeObjectAtIndex: (unsigned) index;
NSMutableArray *array = [NSMutableArray arrayWithObjects:
                         @"One",@"Two",@"Three",nil];
[array removeObjectAtIndex:1];
NSLog(@"array:%@",array);




//- (NSEnumerator *)objectEnumerator;从前向后
NSMutableArray *array = [NSMutableArray arrayWithObjects:
                         @"One",@"Two",@"Three",nil];
NSEnumerator *enumerator;
enumerator = [array objectEnumerator];

id thingie;
while (thingie = [enumerator nextObject]) {
    NSLog(@"thingie:%@",thingie);
}


//- (NSEnumerator *)reverseObjectEnumerator;从后向前
NSMutableArray *array = [NSMutableArray arrayWithObjects:
                         @"One",@"Two",@"Three",nil];
NSEnumerator *enumerator;
enumerator = [array reverseObjectEnumerator];

id object;
while (object = [enumerator nextObject]) {
    NSLog(@"object:%@",object);
}


//快速枚举
NSMutableArray *array = [NSMutableArray arrayWithObjects:
                         @"One",@"Two",@"Three",nil];
for(NSString *string in array)
{
    NSLog(@"string:%@",string);
}






//- (id) initWithObjectsAndKeys;

NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:@"One",@"1",@"Two",@"2",@"Three",@"3",nil];
NSString *string = [dictionary objectForKey:@"One"];
NSLog(@"string:%@",string);
NSLog(@"dictionary:%@",dictionary);
[dictionary release];





//创建
NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];

//添加字典
[dictionary setObject:@"One" forKey:@"1"];
[dictionary setObject:@"Two" forKey:@"2"];
[dictionary setObject:@"Three" forKey:@"3"];
[dictionary setObject:@"Four" forKey:@"4"];
NSLog(@"dictionary:%@",dictionary);

//删除指定的字典
[dictionary removeObjectForKey:@"3"];
NSLog(@"dictionary:%@",dictionary);





//将NSRect放入NSArray中
NSMutableArray *array = [[NSMutableArray alloc] init];
NSValue *value;
CGRect rect = CGRectMake(0, 0, 320, 480);
value = [NSValue valueWithBytes:&rect objCType:@encode(CGRect)];
[array addObject:value];
NSLog(@"array:%@",array);

//从Array中提取
value = [array objectAtIndex:0];
[value getValue:&rect];
NSLog(@"value:%@",value);




NSFileManager *fileManager = [NSFileManager defaultManager];
NSString *home;
home = @"../Users/";

NSDirectoryEnumerator *direnum;
direnum = [fileManager enumeratorAtPath: home];

NSMutableArray *files = [[NSMutableArray alloc] init];

//枚举
NSString *filename;
while (filename = [direnum nextObject]) {
    if([[filename pathExtension] hasSuffix:@"jpg"]){
        [files addObject:filename];
    }
}

//快速枚举
//for(NSString *filename in direnum)
//{
//    if([[filename pathExtension] isEqualToString:@"jpg"]){
//        [files addObject:filename];
//    }
//}
NSLog(@"files:%@",files);

//枚举
NSEnumerator *filenum;
filenum = [files objectEnumerator];
while (filename = [filenum nextObject]) {
    NSLog(@"filename:%@",filename);
}

//快速枚举
//for(id object in files)
//{
//    NSLog(@"object:%@",object);
//}


//////////http://blog.sina.com.cn/s/blog_6f40a0e70100w2q4.html////////////


引入

NSString 和 NSMutableString 可以说是软件开发人员每天都要面对的基本操作。下面就分享一些常见的 NSString 和 NSMutableString 方法。

NSString方法

+(id) stringWithContentsOfFile:path encoding:enc error:err

创建一个新字符串并将其设置为path指定的文件的内容，使用字符编码enc，如果非零，则返回err中错误



+(id) stringWithContentsOfURL:url encoding:enc error:err

创建一个新的字符串，并将其设置为url的内容，使用字符编码enc，如果非零，则返回err中的错误



+(id) string

创建一个新的空字符串



+(id) stringWithString:nsstring

创建一个新的字符串，并将其设置为nsstring



-(id)initWithString:nsstring

将分配的字符串设置为nsstring



-(id) initWithContentsOfFile:path encoding:enc error:err

将字符串设置为path制定的文件的内容



-(id) initWithContentsOfURL:url encoding:enc error:err

将字符串设置为url(NSURL *)url的内容，使用字符编码enc，如果非零，则返回err中的错误



-(id) (UNSIgned int)length

返回字符串中的字符数目



-(unichar)characterAtIndex:i

返回索引i的Unicode字符



-(NSString *)substringFromIndex:i

返回从i开始知道结尾的子字符串



-(NSString *)substringWithRange:range

根据指定范围返回子字符串



-(NSString *)substringToIndex:i

返回从该字符串开始到索i的子字符串



-(NSComparator *)caseInsensitiveCompare:nsstring

比较两个字符串，忽略大小写



-(NSComparator *)compare:nsstring

比较两个字符串



-(BOOL)hasPrefix:nsstring

测试字符串是否以nsstring开始



-(BOOL)hasSuffix:nsstring

测试字符串是否以nsstrng结尾



-(BOOL)isEqualToString:nsstring

测试两个字符串是否相等



-(NSString *) capitalizedString

返回每个单词首字母大写的字符串（每个单词的其余字母转换为小写）



-(NSString *)lowercaseString

返回转换为小写的字符串



-(NSString *)uppercaseString

返回转换为大写的字符串



-(const char*)UTF8String

返回转换为UIF－8字符串的字符串



-(double)doubleValue

返回转换为double的字符串



-(float)floatValue

返回转换为浮点值的字符串



-(NSInteger)integerValue

返回转换为NSInteger整数的字符串



-(int)intValue

返回转换为整数的字符串

NSMutableString方法

+(id) stringWithCapacity:size

创建一个字符串，初始包含size的字符



-(id) initWithCapacity:size

使用初始容量为size的字符串来初始化字符串



-(void) setString:nsstring

将字符串设置为nsstring



-(void) appendString:nsstring

在接收者的末尾附加nsstring



-(void) deleteCharactersInRange:range

删除指定range中的字符



-(void) insertString:nsstring atIndex:i

以索引i为起始位置插入nsstring



-(void) replaceCharactersInRange:range withString:nsstring

使用nsstring替换range指定的字符



-(void) replaceOccurrencesOf

String:nsstring withString:nsstring2 options:opts range:range

根据选项opts。使用指定range中的nsstring2替换所有的nsstring。选项可以包括NSBackwardsSearch（从范围的结尾 开始搜索）NSAnchoredSearch(nsstring必须匹配范围的开始)，NSLiteralSearch(执行逐字节比较以及 NSCaceInsensitiveSearch的按位或组合)


/////http://mmz06.blog.163.com/blog/static/1214169620116933945666///////////



NSString与NSMutableString字符串操作：增、删、改字符串

NSString是定义固定大小的字符串，NSMutableString可变，可对字符串做增、删、改、插入等操作。
源代码strings.m
-----------------------------------
#import <Foundation/Foundation.h>
int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    // insert code here...
    NSString *artist = @"Underworld";
    NSLog(@"The "%@" length is %d",artist,[artist length]);
    
    NSString *substring = [artist substringFromIndex:5];
    
    NSLog(@"From index 5 to end that substring is "%@"",substring);
    
    NSRange range = [artist rangeOfString:@"w"];
    NSLog(@"range.location = %d,是字母"w"所在的索引位置",range.location);
    NSLog(@"range.length = %d,是字母"w"的长度",range.length);
    
    NSLog(@"------------------------------");
    
    NSString *song = @"美丽新世界,伍佰";
    NSRange range1 = [song rangeOfString:@","];
    NSString *songName = [song substringToIndex:range1.location];
    NSString *songAuthor = [song substringFromIndex:range1.location + range1.length]; //如果不加上range1.length,取词就包含逗号
    
    NSLog(@"歌曲:%@",song);
    NSLog(@"","号位置为 %d",range1.location);
    NSLog(@"歌名:%@",songName);
    //printf("歌名:%s \n",[songName UTF8String]);//正确
    //NSLog(@"歌名:%@", [songName UTF8String]);//错误
    NSLog(@"作者:%@",songAuthor);
    
    NSLog(@"---------------------------------");
    NSLog(@"可变字符串类NSMultableString演示:");
    
    NSMutableString *movie = [[NSMutableString alloc] initWithString:@"变形金刚2"];
    
    NSLog(@"%@",movie);
    
    [movie appendString:@",派拉蒙影业"];
    NSLog(@"%@.方法appendString",movie);
    
    NSRange range2 = [movie rangeOfString:@"派拉蒙影业"];
    [movie replaceCharactersInRange:range2 withString:@"派拉蒙电影公司"]; //不是range2.location
    NSLog(@"%@.方法replaceCharactersInRange",movie);
    
    [movie deleteCharactersInRange:[movie rangeOfString:@"公司"]];
    NSLog(@"%@.方法deleteCharactersInRange",movie);
    
    range2 = [movie rangeOfString:@"变形金刚"];
    [movie insertString:@"科幻电影:" atIndex:range2.location];
    NSLog(@"%@.方法insertString",movie);
    
    [movie release]; //采用alloc的对象都不要忘记release
    [pool drain];
    return 0;
}
http://blog.csdn.net/trandy/article/details/6624255///////////////

/************************   常用的NSString和NSMutableString方法   **********************/