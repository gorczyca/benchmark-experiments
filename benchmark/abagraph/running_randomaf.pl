The file randomaf.pl was used to generate 680 assumption-based argumentation frameworks; this program runs under SICStus prolog (versions > 4.2.x). To run this, line 39 should be edited to point to the right output directory for the frameworks to be written to. Then, load "randomaf.pl" into SICStus and use make_exp_frameworks/2; the first parameter is the number of frameworks to make per value of the various settings used to generate the frameworks, and the second parameter is an identifier which will be used in the filenames (for discriminating between different batches of frameworks).

The random generation will verify whether the frameworks generated are cyclic or acyclic, and print this information to screen; whether the frameworks contain cycles is also indicated in the filename.

For the paper experiments, we passed '10' as the first parameter. The output frameworks are contained in frameworks.tar.gz.

/usr/local/sicstus4.8.0/bin/sicstus
?- consult('randomaf.pl').

