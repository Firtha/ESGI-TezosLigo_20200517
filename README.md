# Student Project : ESGI - Tezos (Ligo Smart contract)

## Features covered

This contract is a hub for creating and interacting with votes.

Each vote :

- Has a creator
- Has a name and an unique ID
- Has a state (true : open vote, false : closed vote)
- Has a voters list
- Accept 10 votes max (yes or no)
- Can not be restarted or stopped until 10 votes are accepted

Each user :

- Can create vote
- Can not vote on his own created vote
- Can vote once on any vote that they don't own

3 possible outcomes :

- (yes > no ) : Yes
- (yes < no ) : No
- (yes = no ) : noMajority

## Test instructions

TODO : ligo dry-run commands for creating and taking vote
