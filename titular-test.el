;;; lisp/titular-test.el -*- lexical-binding: t; -*-

(require 'titular)

(ert-deftest titular-test ()
  (should (equal (titlecase-string "the quick brown fox jumps over the lazy dog") "The Quick Brown Fox Jumps Over the Lazy Dog"))
  (should (equal (titlecase-string "'the great gatsby'") "'The Great Gatsby'"))
  (should (equal (titlecase-string "small word at the end is nothing to be afraid of") "Small Word at the End Is Nothing to Be Afraid Of"))
  (should (equal (titlecase-string "for step-by-step directions email someone@gmail.com") "For Step-by-Step Directions Email someone@gmail.com"))
  (should (equal (titlecase-string "2lmc spool: 'gruber on OmniFocus and vapo(u)rware") "2lmc Spool: 'Gruber on OmniFocus and Vapo(u)rware"))
  (should (equal (titlecase-string "Have you read “The Lottery”?") "Have You Read “The Lottery”?"))
  (should (equal (titlecase-string "Have you read “the lottery”?") "Have You Read “The Lottery”?"))
  (should (equal (titlecase-string "Have you read \"the lottery\"?") "Have You Read \"The Lottery\"?"))
  (should (equal (titlecase-string "your hair[cut] looks (nice)") "Your Hair[cut] Looks (Nice)"))
  (should (equal (titlecase-string "People probably won't put http://foo.com/bar/ in titles") "People Probably Won't Put http://foo.com/bar/ in Titles"))
  (should (equal (titlecase-string "Scott Moritz and TheStreet.com’s million iPhone la‑la land") "Scott Moritz and TheStreet.com’s Million iPhone La‑La Land"))
  (should (equal (titlecase-string "Scott Moritz and thestreet.com’s million iPhone la‑la land") "Scott Moritz and thestreet.com’s Million iPhone La‑La Land"))
  (should (equal (titlecase-string "BlackBerry vs. iPhone") "BlackBerry vs. iPhone"))
  (should (equal (titlecase-string "Notes and observations regarding Apple’s announcements from ‘The Beat Goes On’ special event") "Notes and Observations Regarding Apple’s Announcements From ‘The Beat Goes On’ Special Event"))
  (should (equal (titlecase-string "Read markdown_rules.txt to find out how _underscores around words_ will be interpretted") "Read markdown_rules.txt to Find Out How _Underscores Around Words_ Will Be Interpretted"))
  (should (equal (titlecase-string "Q&A with Steve Jobs: 'That's what happens in technology'") "Q&A With Steve Jobs: 'That's What Happens in Technology'"))
  (should (equal (titlecase-string "What is AT&T's problem?") "What Is AT&T's Problem?"))
  (should (equal (titlecase-string "Apple deal with AT&T falls through") "Apple Deal With AT&T Falls Through"))
  (should (equal (titlecase-string "this v that") "This v That"))
  (should (equal (titlecase-string "this vs that") "This vs That"))
  (should (equal (titlecase-string "this v. that") "This v. That"))
  (should (equal (titlecase-string "this vs. that") "This vs. That"))
  (should (equal (titlecase-string "The SEC's Apple probe: what you need to know") "The SEC's Apple Probe: What You Need to Know"))
  (should (equal (titlecase-string "'by the way, small word at the start but within quotes.'") "'By the Way, Small Word at the Start but Within Quotes.'"))
  (should (equal (titlecase-string "Starting sub-phrase with a small word: a trick, perhaps?") "Starting Sub-Phrase With a Small Word: A Trick, Perhaps?"))
  (should (equal (titlecase-string "Sub-phrase with a small word in quotes: 'a trick, perhaps?'") "Sub-Phrase With a Small Word in Quotes: 'A Trick, Perhaps?'"))
  (should (equal (titlecase-string "Sub-phrase with a small word in quotes: \"a trick, perhaps?\"") "Sub-Phrase With a Small Word in Quotes: \"A Trick, Perhaps?\""))
  (should (equal (titlecase-string "\"Nothing to Be Afraid of?\"") "\"Nothing to Be Afraid Of?\""))
  (should (equal (titlecase-string "a thing") "A Thing"))
  (should (equal (titlecase-string "Dr. Strangelove (or: how I Learned to Stop Worrying and Love the Bomb)") "Dr. Strangelove (Or: How I Learned to Stop Worrying and Love the Bomb)"))
  (should (equal (titlecase-string "  this is trimming") "  This Is Trimming"))
  (should (equal (titlecase-string "IF IT’S ALL CAPS, FIX IT") "If It’s All Caps, Fix It"))
  (should (equal (titlecase-string "___if emphasized, keep that way___") "___If Emphasized, Keep That Way___"))
  (should (equal (titlecase-string "What could/should be done about slashes?") "What Could/Should Be Done About Slashes?"))
  (should (equal (titlecase-string "Never touch paths like /var/run before/after /boot") "Never Touch Paths Like /var/run Before/After /boot"))
  (should (equal (titlecase-string "What about relative paths like ./profile and ~/downloads/music?") "What About Relative Paths Like ./profile and ~/downloads/music?"))
  (should (equal (titlecase-string "And windows paths like c:\\temp\\scratch too") "And Windows Paths Like c:\\temp\\scratch Too"))
  (should (equal (titlecase-string "There are 100's of buyer's guides") "There Are 100's of Buyer's Guides"))
  (should (equal (titlecase-string "a trick perhaps? or not really.") "A Trick Perhaps? Or Not Really."))
  (should (equal (titlecase-string "drop. the. ball.") "Drop. The. Ball."))
  (should (equal (titlecase-string "some cats are fun; the others aren't") "Some Cats Are Fun; The Others Aren't"))
  (should (equal (titlecase-string "roses are red\nviolets are blue") "Roses Are Red\nViolets Are Blue"))
  (should (equal (titlecase-string "roses are red\nand violets are blue") "Roses Are Red\nAnd Violets Are Blue"))
  (should (equal (titlecase-string "the home directory is /home/username\nbut the root's home is /root") "The Home Directory Is /home/username\nBut the Root's Home Is /root")))
