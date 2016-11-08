# Simple Ansible Role

As you can see tests is included directly along with tasks and all other upper
level folders for a role. The .travis.yml is at the root of the repository where
travis.ci will look for it.

This folder is then mounted into the role_under_test role which will then run
the role in the desired environment.
