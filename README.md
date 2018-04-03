# compilerlab

->folder symbol table:
      if a list of declarations is given,the variable along with its datatype is displayed.if any redeclarations or       multideclarations,appropriate error statements are also printed.

->folder if:
     if given an "if" statement with dangling else then insert a corresponding "else" to the if.Nested if statements can be given.

->folder forwhile:
     Given a "for" loop,the coressponding "while" loop is printed without the change in semantics.

->folder syntax tree:
    Takes an airthmetic expression and creates a syntax tree in prefix order.

->folder threeaddress:
    creates three address statements for airthmetic expression.

->folder backpatching:
    for a given boolen expression in "if-else" statement,create a truelist and falselist.

->folder cfg:
    generates control flow graph for a set of c statements from basic blocks.It generates three address statements,blocks and cfg for each block.

->folder all:
    Generates dag for a block of statements and removes copy propagation,constant folding,common subexpressions and then displays the optimized three address statements for the block.

->folder label tree:
    Given an airthmetic expression,it constructs a syntax tree and generates assembly code for the expression.
