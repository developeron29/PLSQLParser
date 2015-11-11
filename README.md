

# A PLSQL parser built using ANTLR 4 

[![Join the chat at https://gitter.im/developeron29/PLSQLParser](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/developeron29/PLSQLParser?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

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
 
 grun PLSQL plsql_block -gui
 <Your PLSQL Code>
 Example:
 declare
 salary number(6);
 ^D
 
 ```
