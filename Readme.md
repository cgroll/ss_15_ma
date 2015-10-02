# Chair of Financial Econometrics

Summer term 2015 [Master
seminar](http://www.finmetrics.statistik.uni-muenchen.de/studium_lehre/sommersemester_2015/seminar_ma_ss_2015/index.html)
held at [Chair of Financial
Econometrics](http://www.finmetrics.statistik.uni-muenchen.de/index.html).

- [Topics overview](http://cgroll.github.io/ss_15_ma/output/topics.html)
- [Topics slides](http://cgroll.github.io/ss_15_ma/output/topics_pres.html)
- [Organizational
  notes](http://cgroll.github.io/ss_15_ma/output/modus_operandi.html)

## Get the newest version

In order to stay up to date with the seminar files, simply clone the
repository to your computer:

````sh
git clone https://github.com/cgroll/ss_15_ma.git
````

You can now produce all output files yourself: (pandoc is required!)

````sh
cd ss_15_ma
make
````

To get new changes from the repository into your local copy, simply
pull them in with git:
````sh
cd ss_15_ma
git pull origin master
````

## Requirements

In order to be able to recreate the output yourself, you need to have
pandoc installed. You can find some installation instructions in the
accompanying research tools repository.


## Publishing workflow

For students that do not succeed in setting up pandoc there also
should be an online version of at least all html files accessible.
These files can be updated through the following steps:

- update markdown files
- create new output files with make
- commit and upload html files (if output files of master branch are
  embedded somewhere else, this is already the final stage)
- copy output files to gh-pages, commit and upload
- optionally: copy pdf files to Dropbox


# MathJax installation

- either: download zip from [github](https://github.com/mathjax/MathJax)
- or: clone repository as subtree 
  - does not include project history
  - allows easy updating

````sh
git subtree add --prefix MathJax https://github.com/mathjax/MathJax.git master --squash
````

# Reveal.js installation

````sh
git subtree add --prefix reveal.js https://github.com/hakimel/reveal.js.git master --squash
````

# d3 installation

````sh
git subtree add --prefix d3 https://github.com/mbostock/d3.git master --squash
````
# pandoc installation


On Linux machines:
- install TeXlive:
````sh
sudo apt-get -y install texlive
````
- download [debian
  package](https://github.com/jgm/pandoc/releases/download/1.13.2/pandoc-1.13.2-1-amd64.deb)
- install using package manager

On Windows machines: follow [screencast instructions](https://youtu.be/N9zVyggYeyU)

# get pandoc templates

````sh
git subtree add --prefix pandoc_templates https://github.com/jgm/pandoc-templates.git master --squash
````
