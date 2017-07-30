---
layout: post
title: Database Transactions
---

Database Transactions
---

The integrity of the data in database is paramount, because if the data gets corrupted, every application that depends on the database may fail or be in error. **Database transaction is an additional mechanism to maintain data integrity**.  

A *transaction* groups a set of related database manipulations together into a single unit. If any operation within the transaction fails, the entire transaction fails, and any changes made by the transaction are abandoned (*rolled back*). Conversely, if all the operations succeed, then all the changes are committed together as a group.  

The four properties (ACID) of a transaction are as follows:  
* **Atomicity** - The database system guarantees that either all operations within the transaction succeed or else they all false.
* **Consistency** - The transaction must ensure that the database is in a correct, consistent state at the start and the end of the transaction. No referential integrity constraints can be broken, for example.
* **Isolation** - All changes to the database within a transaction are isolated from all other queries and transactions utils the transaction is committed.
* **Durability** - When committed, changes made in a transaction are permanent. The database system must have some way to recover from crashes and other problems so that current state of the database is never lost.
