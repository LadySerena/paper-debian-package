# paper-debian-package

gradle file for building a debian package with a paper minecraft server

To upload a new version to google cloud storage

1. update the `paperDownloadURL` property in `gradle.properties`

2. make other changes as needed

3. push feature branch to `main`

4. cut a new release tag with the version matching the version number of the minecraft server with a unique release
   property
