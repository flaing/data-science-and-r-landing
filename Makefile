SITE= .site
RM= rm -rf

all : site

site:
    jekyll build --source jekyll --destination $(SITE)

server:
    jekyll server --source jekyll --destination $(SITE) --watch

publish: site gh-pages

gh-pages:
    shell/publish gh-pages

clean :
    $(RM) $(SITE)
