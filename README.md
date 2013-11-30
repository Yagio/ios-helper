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
        NSLog(@"Empty? %@", [col isEmpty]?@"SIM":@"NÃO");

        NSLog(@"Contains 'bob'? %@", [col contains:@"bob"]?@"YES":@"NO");

        [col clear];
        NSLog(@"Content: %@", col);
        NSLog(@"Empty? %@", [col isEmpty]?@"YES":@"NO");
```

Feel free to fork and contribute to this project.
