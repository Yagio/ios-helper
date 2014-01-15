ios-helper
==========

iOS and Objective C classes utility and helper

<h3>Collections</h3>
<h4>CollectionHelper<h4>

**Example**
```objective-c
        CollectionHelper *col = [[CollectionHelper alloc] init];
        [col add:@"bob"];
        [col add:@"mary"];

        NSLog(@"Size: %ld", [col size]);
        NSLog(@"Content: %@", col);
        NSLog(@"Empty? %@", [col isEmpty]?@"YES":@"NO");

        NSLog(@"Contains 'bob'? %@", [col contains:@"bob"]?@"YES":@"NO");

        [col clear];
        NSLog(@"Content: %@", col);
        NSLog(@"Empty? %@", [col isEmpty]?@"YES":@"NO");
```

<h3>Date</h3>
<h4>DateHelper<h4>
        
**Example**
```objective-c
    NSLog(@"Converted date %@", [DateHelper convert:YOUR_DATE usingPattern:@"dd/MM/yyyy"]);

    NSLog(@"Today is %@", [DateHelper convertToday:@"dd/MM/yyyy"]);
```

<h3>Plist</h3>
<h4>PlistManager<h4>
        
**Example**
```objective-c
    // Move plist file (if not exists) from Bundle to Document Directory
    PlistManager *plist = [[PlistManager alloc] init:@"Config"];

    // Print Plist file content
    [plist debug];

    // Change a Plist File key/value
    [plist changeValue:[[NSNumber alloc] initWithDouble:100.0] forKey:@"MyExampleNumber"];
```

Feel free to fork and contribute to this project.
