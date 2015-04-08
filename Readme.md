# Chair of Financial Econometrics

Summer term 2015 [Master
seminar](http://www.finmetrics.statistik.uni-muenchen.de/studium_lehre/sommersemester_2015/seminar_ma_ss_2015/index.html)
held at [Chair of Financial
Econometrics](http://www.finmetrics.statistik.uni-muenchen.de/index.html).

- [Topics overview](http://cgroll.github.io/ss_15_ma/topics.html)
- [Topics slides](http://cgroll.github.io/ss_15_ma/topics_pres.html)
- [Organizational
  notes](http://cgroll.github.io/ss_15_ma/modus_operandi.html)

## Organizational notes

You can find all topics [here](http://cgroll.github.io/ss_15_ma/topics.html).

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
