---
title: The maintenance spiral of fear
---

During my work with many development teams that maintain very old code bases, I
have noticed a pattern that is very damaging, creeps slowly up on teams and
eventually completely stops any kind of innovation and change.

There are two kinds of complexity in software, of which both will have a great
impact on your changeability. One is inherent complexity - it's the complexity
that comes with the amount of features in your product. More features, higher
complexity; the only way to get rid of this complexity is by losing features,
but this is seldom an option.

The second kind is accidental complexity; the complexity that goes on top of
your inherent complexity that is due to errors in design and implementation.
Poor design choices and poor code will lead to overly complex solutions. Getting
rid of accidental complexity is possible but very time consuming. The earlier
you start with getting rid of the accidental complexity, the cheaper it is. If
you wait too long, your complexity will hinder your changeability - so it will
stop you from changing your code for the better. If you cannot change your code,
you cannot get rid of the flaws that keep you from improving your code.

This is still manageable and affordable, as long as you don't have the pressure
of pushing out new features. So the way to get out of this mess is to stop,
breathe, think and then improve the code. If you don't this is where the pattern
I want to talk about kicks in: The maintenance spiral of fear.

# Scrum team koala

Let's imagine we have a scrum team of developers working on a rather old code
base. We have a healthy mix of young, new fresh developers full of ideas and
ideals, and we have the older generation that fought in the tunnels when the
firm and code was still young and the pressure to produce was high. We have
a product owner that heavily interacts with the customer but has no real
development experience of his own; and we have a middle management that is
mainly interested in short term results.

Through the years, the code base grew and grew and many new features made it
into the software. Under high pressure, short cuts were taken but never smoothed
out - there was no time. This went on for some time and the number of bugs and
weird fixes that come with them grew. There are no tests for all the
possible settings and their combinations; those are the first ones to go in time
of pressure. Now, we have the perfect preconditions set for what is essentially
a spiral down to doom.

Whenever a new feature or a bug fix has to be implemented, the developers have
two choices. Either *just get it done* and try to fix it without disturbing
the rest of the code too much, or try to improve the code which means breaking
some of the old code up, define proper interfaces and get rid of some of the
special cases. Imagine our developer Tim decides, for whatever reason, to go
with the unusual second path.

# Learning fear

Every code has bugs. Every change has the chance of breaking things, even if you
test it thoroughly. Of course, since our code is full of hacks and special
cases, Tim will break things with his refactoring.
He will introduce new bugs that will pop up in production; some combination of
settings or data he didn't think about.
The tickets start to pop up. The team has to drop what they where doing and help
Tim fix the bugs.

This is where it's decisions time. The team has two possible ways to handle the
situation. The healthy and good thing to do, is to understand that refactoring
is necessary, due to the lack of tests there is no way to test everything
every time, and that all they can do is to minimise the impact for the customers
while they get their software in order.

The second way is to be angry at Tim. The product owner is angry because he had
to explain the customers why things that worked before are now broken. The team
is angry with Tim, because he messed with old working code; why did he had to
touch it? This is where Tim learns to be fearful of changing code. This is where
Tim understands that the old code should not be touched. This is where he
changes his disruptive programming style for code surgery - just putting the
minimal amount of additional code in for the new feature to work or the bug to
be fixed.

# The spiral

Of course, this newly learned programming style of Tim is now not helping the
quality of the code. The less the developers improve old code, the worse it
gets. The worse it gets, the more complex the code will be and the more things
will break if one ever touches it. And the fear will grow with it. It's a
vicious cycle where bad code feeds the fear of the developers to improve their
code. And it gets worse faster, the worse the code is. It paralyses the team.

I have seen this pattern many times, especially on very old code bases. Either
the complexity of the code got out of hand, or a team takes over old code that
they have no knowledge about and learn to fear the change after the first
months.

# The way out?

Once code reaches a certain complexity and the fear of change in a team grows
with it, it's very hard to break out of it. The team must understand that code
_will_ break when they improve things.  They must expect it.
And the product owner must be understanding of this fact and manage the right
time for the changes to go into production.

The most important thing to understand is that this is _not_ a technical 
problem.  Old code bases are being successfully managed by teams all the time.
It's a social problem: to smack the developer down when he tries to improve
the code is the big mistake. Instead, the team should encourage change, they
should reward the courage to dig into the old code. The only way to break the
vicious cycle is to change the rules; and that is to change the negative
feedback.

Of course, getting rid of the negative feedback loop will not magically make
your code better; it still takes a lot of effort to clean code up and it
might fail regardless. There are a lot more factors that play a role like
developer skill, amount of pressure, support by tooling etc. that decide
whether an improvement can be achieved. But without getting rid of the negative
feedback loop, you can't even start to think about cleaning up.

