# spent-time
## Log for smcameron
<hr>
<b>Tue Nov  7 08:52:08 PST 2017</b>
<p>Yesterday, worked on debugging pseudo erosion -- didn't get it to work
properly, but found a few problems.
<p>Spent a couple hours on nanogenmo 2017. I think this thing is probably
a waste of time. What it produces so far is utter garbage, and not really
entertaining.
<hr>
<b>Sun Nov  5 09:22:18 PST 2017</b>
<p>Mostly worked on nanogenmo yesterday.
<P>Haven't been able to get the pseudo erosion thing to produce very nice output so far.
<hr>
<b>Fri Nov  3 05:11:41 PDT 2017</b>
<p>Woke up early and couldn't sleep. Worked on the pseudo erosion thing.
<a href="https://github.com/smcameron/pseudo-erosion">https://github.com/smcameron/pseudo-erosion</a>.
Output currently looks like this: <a href="https://i.imgur.com/Dtv6gwv.png">output of pseudo-erosion</a>.
<p>Fixed some problems with Space Nerds In Space joystick support. Still
needs some work.  See <a href="https://github.com/smcameron/space-nerds-in-space/issues/117">Issue 117</a>.
<hr>
<b>Thu Nov  2 08:06:04 PDT 2017</b>
<p>Need to spend some time looking at this:
<a href="https://www.reddit.com/r/proceduralgeneration/comments/797fgw/iterative_pseudoerosion/">Iterative Pseudo-Erosion</a>
<blockquote>

<p>Here is a single iteration. So let me run down the basic algorithm. It's kind
of like a mutant Worley.

<p>Start with a heightmap. Now, for a grid of randomly offset points (though
poisson disk sampling might look better), have each point 'connect' to its
lowest neighbor. 

<p>Once the connections are set, cycle every pixel. Each pixel cycles all
nearby points and evaluates the equations
<li>f1 = ((y1 - y2) * (y -y1) + (x1 - x2) * (x - x1)) / (sqr(y1 - y2) + sqr(x1 - x2)) 
and
<li>f2 = abs((( y1 - y2) * (x - x1) - (x1 - x2) * (y - y1)) / sqrt(sqr(x1 - x2) + sqr(y1 - y2)))
<p>where (x1, y1) are the coordinates of the point being checked, (x2, y2) are the
coordinates of the point that is connected to, and (x, y) are the coordinates of
the pixel. 

<p>If f1 &gt; 0, the height from that point is
<li>sqrt(sqr(x - x1)) + sqr(y - y1)). 
If f1 &lt; -1,
the height from that point is 
<li>sqrt(sqr(x - x2)) + sqr(y - y2)). 
<p>If 0 > f1 > -1, the height from that point is f2. 
The final height of the pixel is the minimum
height given from all points. Iterate and combine as you please.
</blockquote>

<p>Worked on my nanogenmo program quite a bit. I think there's no
escaping that its output will be an incoherent mess.
<p>	
<hr>
<b>Wed Nov  1 13:20:56 PDT 2017</b>
<p>Spent some more time working on the rendering of the central star
in Space Nerds In Space, trying to get it to deal with the two pass
renderer. So far, not working quite right yet.

<p>Signed up for <a href="https://github.com/NaNoGenMo/2017/issues/58">Nanogenmo 2017</a>

<p>Practiced guitar for about an hour.
<hr>
<b>Tue Oct 31 23:56:54 PDT 2017</b>

Made this page.

Worked on specialized star shader for Space Nerds In Space. It works by using an
opengl query to see if the central star is rendered, and if so, putting another star
image scaled according to what fraction of the star is rendered. Problems: 1) the
second star is centered on the first star, not on the <em>exposed portion</em> of the
first star, as it should be. 2) It does not play well with the 2-tiered rendering
scheme in which the far objects are rendered, and then the near objects. It fails to
be aware of the case when the star (in the far tier) is obscured by objects in the
near tier. Otherwise, it
[kind of works](https://www.youtube.com/watch?v=OZXGNmmI1Bo)

Worked on trying to get the RTS implementation to be better. Made RTS ships
move faster, which seems to improve the balance. But, refueling ships seems to
take a long time, and defending against attacking/occupying ships seems
very hard. Have a lot of uncertainty around how the AI should work.
