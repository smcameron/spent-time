# spent-time
## Log for smcameron
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
