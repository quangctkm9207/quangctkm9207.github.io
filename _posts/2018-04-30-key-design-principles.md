---
layout: post
title: Key design principles 
comments: true
---
The software engineer mission is to build useful and well-designed programs operated automatically or by people. These programs should not cause errors which result in accidents or frustration to the user. To achieve this, software engineers should follow key design principles in discipline.

Following the advice to "keep knowledge in the world" from Don Norman, I would like to jot down **key design principles** written in his famous book ["The Design of Everyday Things"](https://en.wikipedia.org/wiki/The_Design_of_Everyday_Things). 

All of the following words are quoted correctly from the book (p. 215-216) without any modification.

---

People are flexible, versatile, and creative. Machines are rigid, precise, and relatively fixed in their operations. There is a mismatch between the two, one that can lead to enhanced capability if used properly. What we call “human error” is often simply a human action that is inappropriate for the needs of technology. 

Given the mismatch between human competencies and technological requirements, errors are inevitable. Therefore, the best designs take that fact as given and seek to minimize the opportunities for errors while also mitigating the consequences. Assume that every possible mishap will happen, so protect against them. Make actions reversible; make errors less costly. Here are key design principles:

* Put the knowledge required to operate the technology in the world. Don’t require that all the knowledge must be in the head. Allow for efficient operation when people have learned all the requirements, when they are experts who can perform without the knowledge in the world, but make it possible for non-experts to use the knowledge in the world. This will also help experts who need to perform a rare, infrequently performed operation or return to the technology after a prolonged absence.
* Use the power of natural and artificial constraints: physical, logical, semantic, and cultural. Exploit the power of forcing functions and natural mappings.
*  Bridge the two gulfs, the Gulf of Execution and the Gulf of Evaluation. Make things visible, both for execution and evaluation. On the execution side, provide feedforward information: make the options readily available. On the evaluation side, provide feedback: make the results of each action apparent. Make it possible to determine the system’s status readily, easily, accurately, and in a form consistent with the person’s goals, plans, and expectations.
We should deal with error by embracing it, by seeking to understand the causes and ensuring they do not happen again. We need to assist rather than punish or scold.