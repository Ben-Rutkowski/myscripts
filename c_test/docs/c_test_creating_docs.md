## **Shell Script** | Init
```
init.sh
```
> Initializes project with basic C test scripting. Creates test directory and testing script and cache.

---

## **Shell Script** | Create Test
```
create_test.sh
```
> Creates a new test inside the test directory. 

### Usage
> Each test has its own Makefile and unique source code. Test much each have its own `main.cpp`. Use `-a` to create an all test which will read the program logs other tests.

#### Makefile (in test)
```
Makefile
```
> Must specify the sub directories and headers used. Must specify compiler commands; unit commands for test objects and test commands for linking stage.
