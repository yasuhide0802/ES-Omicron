# GRBD + SQLCipher 

## What is this?
This is a fork of [GRBD](https://github.com/groue/GRDB.swift) which contains a [SQLCipher Community Edition](https://www.zetetic.net/sqlcipher/open-source/) amalgamation packaged so that it can be consumed as a Swift Package.

The default branch for this repository is `SQLCipher` so that we can more easily pull upstream changes if we need to.

## Versioning

* This Package: *1.1.0*
* GRDB: *5.12.0*
* SQLCipher: *4.4.3*

## Contributions
We do not accept contributions to this repository at this time.  However, feel free to open an issue in order to start a discussion.

## We are hiring!
DuckDuckGo is growing fast and we continue to expand our fully distributed team. We embrace diverse perspectives, and seek out passionate, self-motivated people, committed to our shared vision of raising the standard of trust online. If you are a senior software engineer capable in either iOS or Android, visit our [careers](https://duckduckgo.com/hiring/#open) page to find out more about our openings!

## Updating from Upstream

Add remote upstream:

* `git remote add upstream git@github.com:groue/GRDB.swift.git`
* `git fetch`

Merge changes:

* Create a new branch, e.g. `git checkout -b your_name/merge_upstream`
* `git merge upstream/master`

This will generate a conflict in this README file, just use this file:

* `git checkout README.md`

Then update the README to state the version merged.

Commit and push your branch, then create a PR against `DuckDuckGo/GRDB.swift/SQLCipher`.

Once merged, tag the branch with a version according to how the version of GRDB was updated, i.e. maintaining [Semantic Versioning Rules](https://semver.org), but note you don't need to follow the version number of GRDB directly.

Examples:

* Upstream GRDB 5.6.0 -> 5.12.0
  * This project 7.0.0 -> 7.1.0

* Upstream GRDB 5.12.0 -> 6.0.0
  * This project 7.1.0 -> 8.0.0
