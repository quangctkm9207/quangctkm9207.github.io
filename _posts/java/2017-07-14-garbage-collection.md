---
layout: post
title: Garbage Collection
---

Garbage Collection
---

*Garbage Collection* is the process by which memory that is no longer in used is identified and reclaimed. This reclamation occurs without programmer assistance.  

**Advantages**  
Compared with the way in which a programmer explicitly deallocate memory. It eliminates bugs caused by dangling pointers, multiple deallocation, and memory leaks. It also promotes greater simplicity in program and interface design because the complicated mechanisms traditionally used to ensure that memory is properly freed are unnecessary.  
* Eliminate bugs.
* Promote greater simplicity in program and interface design.  

**Disadvantages**  
* Run more slowly, because the overhead needed for the system to determine when to deallocate and reclaim memory that is no longer needed.
* Occasionally over-allocate memory and may not free memory at the ideal time.  

**Methods**  
* Reference counting.
* Tracing garbage collector.
