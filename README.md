# Dokku static site

This is a reusable Docker image that allows to deploy static sites to Dokku with Dockerfile (and without using buildbacks).

## HOW TO

Create `Dockerfile` in the root of your static site with the following contents:

```Dockerfile
FROM ilyasemenov/dokku-static-site
```

Push the project to Dokku as usual:

```bash
DOKKU_HOST=dokku.me dokku-client.sh apps:create mysite
git push dokku master
```

The site is now available at <http://mysite.dokku.me>

### Ignoring certain files

Create `.dockerignore` if you want to exclude certain files from getting exposed. For example, you may want this:

```
Dockerfile
.dockerignore
README.md
```
