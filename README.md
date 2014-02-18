Antlr-4-PLSQL-Parser---AST-Generator
====================================

# A PLSQL parser built using ANTLR 4 

## Setup

To install ANTLR 4, if you don't have it already

```

cd /usr/local/lib
wget http://antlr.org/download/antlr-4.2-complete.jar

```

### Note - Update it to the latest ANTLR, as of when you use it [Reference](http://www.antlr.org/)

```
 export CLASSPATH=".:/usr/local/lib/antlr-4.2-complete.jar:$CLASSPATH"
 alias antlr4='java -jar /usr/local/lib/antlr-4.2-complete.jar'
 alias grun='java org.antlr.v4.runtime.misc.TestRig'
``` 
 
 
 ## Running
 
 ```
 grun PLSQL plsql_block -gui
 <Your PLSQL Code>
 Example:
 declare
 salary number(6);
 ^D
 ```
