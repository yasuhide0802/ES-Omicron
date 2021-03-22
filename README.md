# GRBD + SQLCipher 

## What is this?
This is a fork of [GRBD](https://github.com/groue/GRDB.swift) which contains a [SQLCipher Community Edition](https://www.zetetic.net/sqlcipher/open-source/) amalgamation packaged so that it can be consumed as a Swift Package.

The default branch for this repository is `SQLCipher` so that we can more easily pull upstream changes if we need to.

## Versioning

* This Package: *1.0.0*
* GRDB: *5.6.0*
* SQLCipher: *4.4.3*

## Contributions
We do not accept contributions to this repository at this time.  However, feel free to open an issue in order to start a discussion.

## We are hiring!
DuckDuckGo is growing fast and we continue to expand our fully distributed team. We embrace diverse perspectives, and seek out passionate, self-motivated people, committed to our shared vision of raising the standard of trust online. If you are a senior software engineer capable in either iOS or Android, visit our [careers](https://duckduckgo.com/hiring/#open) page to find out more about our openings!

## Updating from Upstream

Add remote upstream:

* `git remote add upstream git@github.com:groue/GRDB.swift.git`

Check out upstream's master branch locally:

* `git fetch upstream +master:upstream-master && git checkout upstream-master`

Branch off upstream's branch:

* `git checkout -b relase/x.y.z-grdb-a.b.c-sqlcipher-i.j.k`

where `x.y.z` is the new version, `a.b.c` is the upstream GRDB version and `i.j.k` is the SQLCipher version.

Apply the original version of the SQLCipher patch:

* `git am -3 0001-SQLCipher-support.patch`

Compile SQLCipher amalgamation package [see general instructions](https://github.com/sqlcipher/sqlcipher#compiling-for-unix-like-systems):

* Use `./configure --with-crypto-lib=none`
* Remember to use `make sqlite3.c` and not `make`.
* Copy `sqlite3.c` and `sqlite3.h` to `Sources/SQLCipher/sqlite3.c` and `Sources/SQLCipher/include/sqlite3.h`

Then update the README to state the versions used. Commit and push your branch, create PR for BSK referencing your new branch,
and then create PRs for iOS and macOS apps referencing your BSK branch.

Once merged, tag the branch with a version according to how the version of GRDB was updated,
i.e. maintaining [Semantic Versioning Rules](https://semver.org), but note you don't need
to follow the version number of GRDB directly.

Examples:

* Upstream GRDB 5.6.0, after merge -> 5.12.0
  * This project 1.0.0 -> 1.1.0

* Upstream GRDB 5.12.0, after merge -> 6.0.0
  * This project 1.1.0 -> 2.0.0
