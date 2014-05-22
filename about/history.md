---
title: History
layout: basic
---

# The beginnings

Chebfun began in Oxford's Numerical Analysis Group, part of the Oxford
University Mathematical Institute. It started during 2002-2005 as a DPhil
research investigation by Zachary Battles, a Rhodes Scholar from the USA,
under the supervision of Nick Trefethen.  (The idea of overloading Matlab's
vectors to functions was first put in writing in an email from Trefethen to
Battles of 8 December 2001.)  This led to <a
href="/chebfun/download/past/chebfun_v1.zip"><b>Version 1</b></a> of Chebfun, for
smooth functions on the interval [-1,1], described in the 2004 <i>SIAM J. Sci.
Comp.</i> <a href="/chebfun/publications/chebfun_paper.pdf">paper</a> by
Battles and Trefethen and in Battles' 2006 thesis.</p>
<center>
    <img class='thumbnail' title="Zachary Battles" src="/images/thomas_zachary.jpg" width="330px" alt="Zachary Battles"/>
</center>

# Version 2

The second phase of the project begin in the autumn of 2006 with the beginning
of research funding from the UK Engineering and Physical Sciences Research
Council (EPSRC). First to join the team was DPhil student Ricardo Pach&#243;n,
from Colombia, who extended Chebfun to piecewise continuous functions and
arbitrary intervals.  Automatic subdivision and edge detection were added by
Pach&#243;n and further developed in collaboration with Rodrigo Platte, from
Brazil, a post-doc who arrived in October 2007.  Then beginning January 2008,
linear operators and solution of differential equations were added to Chebfun,
together with integral operators, eigenvalue problems, and exponentials of
operators.  This was the work of Toby Driscoll, of the University of Delaware,
who has led the differential equations side of Chebfun since then.  A key
collaborator at the beginning of this work was Folkmar Bornemann of the
Technical University of Munich. All these developments came together with the
release of Chebfun <b>Version 2</b> in June 2008.
<center>
    <img class='thumbnail' title="Anticlockwise from top left: Trefethen, Driscoll, Pachon, Platte" src="/images/chebteamtaxi.jpg" name="team" width="330px" alt="Version 2 Team" 
    onmousedown="document.images['team'].src='../images/linpack.jpg'" 
    onmouseup="document.images['team'].src='../images/chebteamtaxi.jpg'"/>
</center>

# Version 3

After the release of Version 2, the project continued to grow.  We now had a
logo, a version control system, an expanding test suite, a web site, eight
chapters of a users guide, half a dozen publications, and quite a few users.
Pach&#243;n added best approximation by the Remez algorithm and explorations
of the complex plane via rational interpolants.  Platte introduced mappings
that make it possible to treat infinite intervals.  Nick Hale joined the
Chebfun core team, first as a DPhil student of Trefethen's and then as a
postdoc at the Oxford Center for Collaborative Applied Mathematics. Hale added
Gauss and other quadrature formulas, even for millions of points, and
developed PDE15S for solving nonlinear PDEs (with 1 space and 1 time
dimension) within the Chebfun framework. A capability of handling functions
that diverge to infinity or have other singularities was added by Oxford DPhil
student Mark Richardson, and automatic differentiation and related methods for
solving nonlinear boundary-value problems by DPhil student &Aacute;sgeir
Birkisson in collaboration with Driscoll.  Pedro Gonnet, Sheehan Olver, Joris
Van Deun and Alex Townsend also became involved. <a
href="../notes/notes_V3_1000.shtml"><b>Version 3</b></a>, a major enhancement of
Version 2 incorporating these and other extensions, was coordinated by Rodrigo
Platte and Nick Hale and released in December 2009.
<center>
    <img class='thumbnail' title="Rodrigo Platte &amp; Nick Hale" src="/images/platte_hale.jpg" name="randn" width="330px" alt="Rodrigo Platte &amp; Nick Hale"/>
</center>

# Version 4

It was now apparent that Chebfun was more than a software package: it was an
ongoing and growing software project with half a dozen developers, hundreds of
programs, and tens of thousands of lines of code.  How could we ensure that it
would continue to grow and remain available and up-to-date for a long time to
help people solve problems?  We were committed to the vision of numerical
computing with functions and determined to give that vision as secure as
future as possible.

Accordingly, in 2010, we decided that Chebfun should become an open-source
project.  The software had always been freely available, but we decided to go
further and make our operations fully accessible to outsiders, including our
<a href="https://svn.maths.ox.ac.uk/trac/chebfun/">Trac bug tracking</a>
system</a>, our <a href="https://svn.maths.ox.ac.uk/pub/chebfun/">svn software
repository</a>, and <a href="/chebfun/lists">discussion groups</a> for
communication among interested parties.  In particular we would open the door
to developers outside Oxford (in addition to Toby Driscoll, who had long been
a key player based at the University of Delaware).  The open-source Chebfun
project would be launched with the release of Chebfun Version 4.
Scientifically, the big new features in Version 4 were related to differential
equations (led by Driscoll and Hale), the graphical user interface called <a
href="/chebfun/chebgui/">CHEBGUI</a> (led by Birkisson and Hale), and a new
collection of <a href="/examples/">Examples</a> to serve as templates
for all kinds of problems (led by Trefethen). Details can be found <a
href="/chebfun/notes/notes_V4.0.shtml">here</a>.

<center style="margin-bottom:10px;">
    <img class='thumbnail' title="(Most of the) V4.0 Team" src="/images/team_v4.jpg" width="560px" alt="(Most of the) V4.0 Team" style="margin-bottom:10px;"/>
</center>

<b>Version 4</b> was released on 28 February 2011 under a <a
href="/license/">New BSD license</a>. Chebfun is now a fully-fledged open-
source project, and outsiders who wish to <a
href="https://svn.maths.ox.ac.uk/trac/chebfun/wiki/DeveloperZone">get
involved</a> are encouraged to do so. The Chebfun team is currently led by
Nick Hale (Director), Nick Trefethen, and Toby Driscoll.

In September 2012 the Chebfun Team organised a three day workshop in St
Anthony's College Oxford entitled <a href="/beyond">Chebfun and
Beyond</a>. The theme was building on the success of Chebfun and reaching
towards computing with functions in higher dimensions. Below is a picture of
(most of) the team present at the workshop.

<center>
    <img class='thumbnail' title="(Most of the) V4.0 Team" src="/images/team_andbeyond.jpg" width="560px" alt="(Most of the) And Beyond Team"/>
</center>

For licensing and copyright purposes, a complete list of the Chebfun contributors is maintained <a href="people.html">here</a>.
