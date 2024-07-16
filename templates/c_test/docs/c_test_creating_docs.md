# **Shell Script** | Init
Initializes project with basic C test scripting. Creates test directory and testing script and cache.
```
init.sh
```


# **Shell Script** | Create Test
Creates a new test inside the test directory. 
```
create_test.sh
```

### Usage
Each test has its own Makefile and unique source code. Test much each have it's own `main.cpp`. Use `-a` to create an all test which will read the program logs other tests.

## Makefile (in test)
```
Makefile
```
Must specify the sub directories and headers used. Must specify compiler commands; unit commands for test objects and test commands for linking stage.
