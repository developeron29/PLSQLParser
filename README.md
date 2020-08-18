

# A PLSQL parser built using ANTLR 4 

[![Join the chat at https://gitter.im/developeron29/PLSQLParser](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/developeron29/PLSQLParser?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## About

This is a PL/SQl parser built on top of ANTLR4 

## Setup

To install ANTLR 4, if you don't have it already

```

cd /usr/local/lib
wget http://antlr.org/download/antlr-4.2-complete.jar

```

### Note - Update it to the latest ANTLR, as of when you use it ( [Reference](http://www.antlr.org/) )

## How to run

```
 export CLASSPATH=".:/usr/local/lib/antlr-4.2-complete.jar:$CLASSPATH"
 alias antlr4='java -jar /usr/local/lib/antlr-4.2-complete.jar'
 alias grun='java org.antlr.v4.runtime.misc.TestRig'
 
 git clone https://github.com/developeron29/PLSQLParser
 cd PLSQLParser
 antlr4 PLSQL.g4  
 javac PLSQL*.java

 grun PLSQL plsql_block -gui
 <Enter your PLSQL code now-> For example:
 declare
 salary number(6);
 ^D [Cmd-D for Mac]
 
 ```

This parses and builds the PLSQL tree for you

## Demo

For above example of 
```
declare
salary number(6);
```
Parsed tree would be:

![antlr4_parse_tree_1.png](https://github.com/developeron29/PLSQLParser/raw/master/antlr4_parse_tree_1.png)

The MIT License (MIT)

Copyright (c) 2015 Ayush Narula

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
