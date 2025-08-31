---
title: "test"
date: 2025-08-05T15:55:21+03:00
toc: false
images:
tags:
  - programming
description: software testing knowledge I gathered from my internship
---
For the last month, I've been doing an internship at [Aselsan] where I developed tests for validating the behavior of an in-house testing suite. The work has been quite eye-opening as I learned that software testing is not only about writing software tests. Well..I did end up writing a lot of tests. Still, there is an interesting world of knowledge about software testing that I want to share.

# just how much testing?
Let's say you're testing a function `foo`. It takes some arguments and returns outputs depending on them. The most simple way to test it is to test one output and verify that the function returns the expected output.

```py
def SimpleTest():
  assert foo(args) == expected_result
```

This is obviously a test that helps the developer gain more trust over the behavior of `foo`. However, there is a crucial problem with it: The code is only verifying one half of the problem. It is entirely possible that the code is written incorrectly in a way that the function returns one output all the time. A measure against this is to create a better test where the test checks both that the function outputs the expected value, *and* that it doesn't output that expected value when it isn't expected.

```py
def SophisticatedTest():
  assert foo(args_1) == expected_result
  assert foo(args_2) != expected_result
```

Now, we have more confidence over the validity of the code: It returns the expected output at least once, and *does not* return it at least once. We have existence, and (a variant of) uniqueness. The takeaway from this is that almost all software tests must be in pairs: One of them check for correctness, and one for the obvious mistakes that can happen. And they happen more often than we would like.

# testing vs. proving
The immediate response to the test above should be "Well, this does not prove the validity of the function either!" The answer to this is "...Yes, it does not. That is not what we *expect* out of tests." What I understood from my internship is that software testing is separate from proving the correctness of programs. [Formal methods] is a way to prove the correctness of programs for *all* inputs, but it is an additional effort that only gets useful when programming *very* critical software. Examples of this are medical equipment like a pacemaker, ECG machines, or critical embedded software like a plane's mission computer. In those cases, it is *worth* the effort to formally prove the programs will operate correctly. However, doing so for *every* program one ever writes is a huge demand that ends up not being worth it. Testing is an alternative to this process. We don't get the certainty of a proof, but we're not stuck with no confidence about the validity of code either. It is a healthy middle ground.

# manual vs. automated
My work during the internship did not require the rigor of formal methods. It was more focused on automating the tests humans have been doing to scripts. There already was documentation on how to verify the in-house testing suite by a human agent. As it should be immediately obvious, this is not a *sustainable* verification method. As the number of qualification tests grow, and human error creeps in, manual testing loses its trustworthiness. The silver lining is that the documentation for the manual tests were done very well, to the point that automating the process was very easy.

In general, automating testing work translates to more precisely specifying what a human would do to test an application. The user would look at the features of the program, hopefully follow some instructions, and see if they match their generally subjective expectations. That is why we do automation. I use automation willingly in my personal projects too. In [how](how), I showcase my upload script that updates this website when I make changes to it. The instructions that script follow are not complicated, but I wouldn't trust myself to do them correctly *every single time*. Never underestimate what one typo in a command can do. Machines are much better at following scripts. It's better to leave that responsibility to them when we can.

# so?
I consider the internship a success as it allowed me to understand a crucial part of complex systems -- testing -- much better. Complex systems need testing. They are too complicated to not make mistakes. Those mistakes are especially headache-inducing when they inevitably result in critical problems on a Friday evening. The best way to get rid of headaches is to put the appropriate effort to testing while building the software.

[aselsan]: https://aselsan.com
[formal methods]: https://en.wikipedia.org/wiki/Formal_methods
