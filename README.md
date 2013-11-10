Prolog-Study
============

Exercises and experiments in Prolog

### Notes:

**Logic programming**: For what parameter values does the expression evaluate to
true?

The **declarative** component of a Prolog program consists of facts and rules
which serve to define relations (in the mathematical sense) on sets of values.
The **imperative** component is its execution engine based on unification and
resolution, a mechanism for recursively extracting sets of data values implicit
in the facts and rules of a program.

A **fact** is a Prolog statement consisting of an identifier (the **predicate**)
followed by an n-tuple of constants.  The identifier is the name of a
(mathematical) relation.  The fact states that the specified n-tuple is in the
relation.  When a tuple of values is in a relation we say the tuple
**satisfies** the predicate.

A fact states that a certain tuple of values satisfies a predicate
*unconditionally*.  A **rule** gives conditions under which tuples satisfy a
predicate.  (So a fact is just a "constant" rule.)

In Prolog the *rule* provides the mechanism for abstraction, and specifies under
what conditions a tuple of values satisfies a predicate.

The basic building block of a rule is called an **atom**: a predicate followed
by a tuple of terms.  When the tuple satisfies the predicate of the atom, the
atom is considered true.

A variable occurring in the head of a rule is treated *universally*, while a
variable that occurs only in the body is handled *existentially*.

A **query** represents a question to a Prolog program: is the query true in the
context of the program?

To summarize: when Prolog tries to deduce a query it begins by searching for
rules with heads which match the predicate of the query. This search is always
done from top to bottom, so order of definition does matter. A match is found if
the parameters to the query are identical to those of the head of a rule or if
the corresponding parameter in the rule head is a variable.

A query is *satisfiable* relative to the program because there is a substitution
for its variable which makes the query true.

**Unification** refers to the process of taking two atoms (one from the query
and the other being a fact or the head of a rule) and determining if there is a
substitution which makes them the same.

When an atom from the query has been unified with the head of a rule (or a
fact), **resolution** replaces the atom with the body of the rule (or nothing,
if a fact) and then applies the substitution to the new query.

To be continued...
