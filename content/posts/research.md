+++
date = '2026-01-13T21:02:25+03:00'
draft = false
title = 'research'
description = "comments on academic research"
tags = [ "research", "journalistic-writing" ]
showToc = true
+++
I've been working as a research volunteer at [BILSEN](https://bilsen.cs.bilkent.edu.tr/) for the last 3 months and the work has been quite eye-opening. I've had a chance to experience academia before, hopefully, I get into more academia :p I'm assuming that this will be my most methodical blog post so far (I have turned on the table of contents for this post, I am that serious :d). The rest of this post is composed of my recent findings about academic work.

## Reading (of large volumes)
God, there is so much reading! You may reasonably say that, for an industry that is mostly involved in writing about research, I should have been prepared for also reading many papers. I guess I was not ready for the sheer *volume* of it. Don't get me wrong, reading *is* enjoyable. You do get to learn about the many approaches tried on problems. The shortcomings and strengths of those prior work guide your own ideas. Hopefully, that reading gives you the push you need to create something new.

You also develop an eye for nicely-written papers as you read more of them. You learn to look for what you need to find. There is definitely a skill to reading scientific papers. I know, another obvious take :P However, there is a non-negligible chance that a researcher new to their work can overlook this skill. In my case, my supervisor has been of great help in acquiring a better reading method. For example, one of his recommended reading on this, [How to Read a Paper](https://web.stanford.edu/class/ee384m/Handouts/HowtoReadPaper.pdf), is a succinct explanation of how a paper can be more easily digested. It also doubles as a peak into a potential reviewer's goals when reading your papers (more on this in the [writing](#writing-and-rewriting) section).

## Writing (and rewriting)
Writing scientific papers turned out to also be an art in-itself. You would expect scientific language to be relatively straight-forward. However, a different kind of writer's block can occur in academia. As with all kinds of writing, scientific writing will (hopefully) be read by humans, be it reviewers or other researchers wanting to use your work. This means it is in your best interest to make your writing as **concise** and **engaging**. If you make it too complicated, 1) reviewers will not waste time reading your work regardless of its significance, and 2) future researchers will scratch their heads trying to figure out what you were trying to say. If you make it too boring, in the same way, humans will struggle to read or use your work. It's the art of the simple and engaging that makes the academic writing go. If you can figure out how to write so, you will have a much better time trying to get your papers accepted.

There are many resources for this purpose too. In fact, I've come across more resources that teach how to write than ones that teach how to read. There is an argument to be made about the irony of this, since reading much and reading well definitely contributes to writing well while the opposite is not necessarily true. Regardless, a good place to start is [Writing Support](https://www.writing.support/).

Additionally, I would like to say that if there is one mentality that you should get rid of, it is the mentality that you should achieve the perfect on the first draft. In the last 3 months, what I found out is that there will **always** be revisions. You will feel terrible showing your half-baked writing to your supervisor. They will understand, as they understand the process better than you do. As time goes on, you will learn to grow a thicker skin and understand that criticism on your work is not an attack on your writing ability. Instead, it is a helpful eye, making you aware of your ignorance when it is necessary. The next time will not be so bad. Both you, and the writing.

## Transparency & Verifiability
One thing about research is that you *can not* be right. You can only be *not wrong*, and that is only *for now*. The main point of research is to form hypotheses and test them against reality. If so, then we must make our experiments as reproducible as possible. The important, and relatively subtle, part of that statement is that we're trying to make sure that our results are reproducible *without any value judgment*. If your results turn out to be satisfactory, they can only be satisfactory if we can reproduce them. If they are not satisfactory, we *also* want to be dissatisfied in the future when we reproduce your results.

Enough with the tangent. This section is more related to the many steps one can take to make sure that their results are as reproducible as possible.
### Document *everything*
As with all work that depends on the past, you must keep artifacts. Be it experiments logs, code, writings; you must hold onto them until you are *absolutely sure* you will not need them anymore (this is likely after your paper gets accepted, and even then you should probably hold onto them). Especially in software engineering, version control systems make this very easy. Use them.

### Validate intermediate steps
What do I mean by "intermediate steps?" There is a very real possibility that the code you used to make the experiments for research will not be the same code you present in a replication package. You will clean up the code, get rid of unnecessary files, etc. This is where you have to be *really* careful. The goal is to make it so that any step in this process should not change the outcome of your experiments (within reason, you can of course make name changes etc.). 

A good way to make sure of valid experiment refactoring is *redundancy*: Make multiple, easily-comparable copies of your experiment. In case of code, run the experiment, copy it somewhere safe, make a refactor step, run the experiment again. If the results are equivalent, **hopefully** you did a good job. There is *always* room for human error. That is why we're being so careful.

### Be brutally transparent
What arbitrary choices did you make during your study? Be honest and write them down. There is wisdom to learn from academia: You are human, we *expect* you to make mistakes. Just please let us figure out exactly what they were so we can collectively not make that specific mistake again. This is good advice for life too: It is the same reason I write. I want to remember my mistakes. It sounds counterintuitive but if I don't remember my mistakes, who can tell when I will make them again?

## Conclusion (or Future Work?)
I have a long way to go in academia. That is the biggest realization I had during these last 3 months. It is a wildly different world compared to my reasonably-correct ways of thinking. I have many lessons to learn, many ways to fall over, and get up again. Regardless, I liked what I saw so far.