<!DOCTYPE html>



<html lang="en">






<head>
	<meta name="generator" content="Hugo 0.139.4">
  <script type="text/javascript">
    
    const currentTheme = localStorage.getItem("theme")
    if (currentTheme) {
      
      const prefersDarkScheme = window.matchMedia("(prefers-color-scheme: dark)").matches
      if ((prefersDarkScheme && currentTheme === "light")
        || (!prefersDarkScheme && currentTheme === "dark")) {
	document.documentElement.dataset.theme = currentTheme
      }
    }
  </script>

  <meta charset='utf-8'>
  <meta content='IE=edge,chrome=1' http-equiv='X-UA-Compatible'>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Git</title>

  <link href="/favicon.ico" rel='shortcut icon' type='image/x-icon'>

  
  <link rel="stylesheet" href="/application.min.css">
  

</head>

<body id="home">

  <div class="inner">
    <header>
  <a id="logo" href="/"><img src="/images/logo@2x.png" width="110" height="46" alt="Git" class="no-filter" /></a>
  <span id="tagline"></span>
  <script type="text/javascript">
   const taglines = [
     "fast-version-control",
     "everything-is-local",
     "distributed-even-if-your-workflow-isnt",
     "local-branching-on-the-cheap",
     "distributed-is-the-new-centralized"
   ];
   var tagline = taglines[Math.floor(Math.random() * taglines.length)];
   document.getElementById('tagline').innerHTML = '--' + tagline;
  </script>

  
  <div id="search-container">
    <form id="search" action="/search/results">
      <input id="search-text" name="search" placeholder="Type / to search entire site…" autocomplete="off" type="text" />
    </form>
    <div id="search-results"></div>
  </div>
  
  <img src="/images/dark-mode.svg" id="dark-mode-button" />
</header>

  </div> 

  
    <div id="masthead">
  <div class="inner">
    <div>
      <p>
        Git is a <a href="/about/free-and-open-source">free and open source</a>
        distributed version control system designed to handle everything from small to
        very large projects with speed and efficiency.
      </p>
      <p>
        Git is <a href="/doc">easy to learn</a> and has a
        <a href="/about/small-and-fast">tiny footprint with lightning fast performance</a>.
        It outclasses SCM tools like Subversion, CVS, Perforce, and ClearCase
        with features like <a href="/about/branching-and-merging">cheap local branching</a>,
        convenient <a href="/about/staging-area">staging areas</a>, and
        <a href="/about/distributed">multiple workflows</a>.
      </p>
    </div>
    <div class="illustration-wrapper">
      <img class="illustration" src="/images/branching-illustration@2x.png" width="389" height="251" />
    </div>
  </div> 
</div> 

    <div id="content-wrapper">
      <div class="inner">
        <div id="front-content">
  <section id="front-navigation">
    <nav id="front-nav">
      <ul>
        <li id="nav-about">
          <a href="/about">
            <img src="/images/icons/nav-about@2x.png" width="74" height="74" />
            <h3>About</h3>
            <p>The advantages of Git compared to other source control systems.</p>
          </a>
        </li>
        <li id="nav-documentation">
          <a href="/doc">
            <img src="/images/icons/nav-documentation@2x.png" width="74" height="74" />
            <h3>Documentation</h3>
            <p>Command reference pages, Pro Git book content, videos and other material.</p>
          </a>
        </li>
        <li id="nav-downloads">
          <a href="/downloads">
            <img src="/images/icons/nav-downloads@2x.png" width="74" height="74" />
            <h3>Downloads</h3>
            <p>GUI clients and binary releases for all major platforms.</p>
          </a>
        </li>
        <li id="nav-community">
          <a href="/community">
            <img src="/images/icons/nav-community@2x.png" width="74" height="74" />
            <h3>Community</h3>
            <p>Get involved! Bug reporting, mailing list, chat, development and more.</p>
          </a>
        </li>
      </ul>
    </nav>
    <div id="front-book">
      <img src="/images/progit2.png" width="56" height="74" />
      <p>
        <strong><a href="/book">Pro Git</a></strong>
        by Scott Chacon and Ben Straub is available to
        <a href="/book">read online for free</a>.
        Dead tree versions are available on <a href="https://www.amazon.com/Pro-Git-Scott-Chacon/dp/1484200772?ie=UTF8&camp=1789&creative=9325&creativeASIN=1430218339&linkCode=as2&tag=git-sfconservancy-20">Amazon.com</a>.
      </p>
    </div>
  </section>
  <section id="front-downloads">
    <div class="monitor">

  <h4> Latest source Release </h4>

  <span class="version">
    2.49.0
  </span>

  <a href="https://raw.github.com/git/git/master/Documentation/RelNotes/2.49.0.adoc">Release Notes</a>
  <span class="release-date">
    (2025-03-14)
  </span>
  <span data-mac="2.33.0" data-win="2.49.0" id="installer-version"></span>

  <a href="https://www.kernel.org/pub/software/scm/git/" class="button" id="download-link">Download Source Code</a>
</div>

    <table>
      <tr>
        <td nowrap="true"><a href="/downloads/guis" class="icon gui" id="gui-link">Graphical UIs</a></td>
        <td nowrap="true"><a href="https://www.kernel.org/pub/software/scm/git/" class="icon older-releases">Tarballs</a></td>
      </tr>
      <tr>
        <td nowrap="true"><a href="/downloads/win" class="icon windows" id="alt-link">Windows Build</a></td>
        <td nowrap="true"><a href="https://github.com/git/git" class="icon source">Source Code</a></td>
      </tr>
    </table>
</section>
</div>

<section id="companies-projects">
  <h3 class="text-center"> Companies &amp; Projects Using Git </h3>
  <ul>
    <li><a href="https://github.com/google" class="google">Google</a></li>
    <li><a href="https://github.com/Microsoft" class="microsoft">Microsoft</a></li>
    <li><a href="https://github.com/linkedin" class="linked-in">LinkedIn</a></li>
    <li><a href="https://github.com/netflix" class="netflix">Netflix</a></li>
    <li><a href="https://perl5.git.perl.org/perl.git" class="perl">Perl</a></li>
    <li><a href="https://git.postgresql.org/gitweb/" class="postgresql">PostgreSQL</a></li>

    <li><a href="https://android-review.googlesource.com/#/q/status:open,n,z" class="android">Android</a></li>
    <li><a href="https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git" class="linux">Linux</a></li>
    <li><a href="https://github.com/rails/rails" class="rails">Ruby on Rails</a></li>
    <li><a href="https://code.qt.io/cgit/" class="qt">Qt</a></li>
    <li><a href="https://gitlab.gnome.org/GNOME" class="gnome">Gnome</a></li>
    <li><a href="https://git.eclipse.org/c/" class="eclipse">Eclipse</a></li>
    <li><a href="https://invent.kde.org/explore/groups" class="kde">KDE</a></li>
    <li><a href="https://cgit.freedesktop.org/xorg/xserver/" class="x">X</a></li>
</ul>
</section>

        <footer>
  <div class="site-source">
    <a href="/site">About this site</a><br>
    Patches, suggestions, and comments are welcome.
  </div>
  <div class="sfc-member">
    Git is a member of <a href="/sfc">Software Freedom Conservancy</a>
  </div>
</footer>
<a href="#top" class="no-js scrollToTop" id="scrollToTop" data-label="Scroll to top">
  <img src="/images/icons/chevron-up@2x.png" width="20" height="20" alt="scroll-to-top"/>
</a>

<script src="/js/jquery-1.7.1.min.js"></script>
<script src="/js/jquery-ui-1.8.18.custom.min.js"></script>
<script src="/js/jquery.defaultvalue.js"></script>
<script src="/js/session.min.js"></script>
<script src="/js/modernizr.js"></script>
<script src="/js/modernize.js"></script>


<script src="/js/application.min.js"></script>

      </div> 
    </div> 
  

</body>
</html>

