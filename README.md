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

## Test instructions (ligo dry-run)

CreateVote testing command :

```shell
ligo dry-run --source="tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx" Voting.ligo main 'CreateVote("TestingVote00")' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[]:map(nat, set(nat))); nextVodeID=(abs(0):nat); vote_names=(map[]:map(nat, string)); vote_voters=(map[]:map(nat, set(address))); vote_yes=(map[]:map(nat, nat)); vote_no=(map[]:map(nat, nat)); vote_states=(map[]:map(nat, bool)); vote_result=(map[]:map(nat, string))]'
```

TakeVote testing command :

```shell
ligo dry-run --source="tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]]:map(address, set(nat))); nextVodeID=(abs(1):nat); vote_names=(map[abs(0)->"TestingVote00"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(0)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0)]:map(nat, nat)); vote_states=(map[abs(0)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"]:map(nat, string))]'

ligo dry-run --source="tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]]:map(address, set(nat))); nextVodeID=(abs(1):nat); vote_names=(map[abs(0)->"TestingVote00"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(1)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0)]:map(nat, nat)); vote_states=(map[abs(0)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"]:map(nat, string))]'

ligo dry-run --source="tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]]:map(address, set(nat))); nextVodeID=(abs(1):nat); vote_names=(map[abs(0)->"TestingVote00"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(2)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0)]:map(nat, nat)); vote_states=(map[abs(0)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"]:map(nat, string))]'

ligo dry-run --source="tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]]:map(address, set(nat))); nextVodeID=(abs(1):nat); vote_names=(map[abs(0)->"TestingVote00"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(3)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0)]:map(nat, nat)); vote_states=(map[abs(0)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"]:map(nat, string))]'

ligo dry-run --source="tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]]:map(address, set(nat))); nextVodeID=(abs(1):nat); vote_names=(map[abs(0)->"TestingVote00"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(4)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0)]:map(nat, nat)); vote_states=(map[abs(0)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"]:map(nat, string))]'

ligo dry-run --source="tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="no"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]]:map(address, set(nat))); nextVodeID=(abs(1):nat); vote_names=(map[abs(0)->"TestingVote00"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(5)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0)]:map(nat, nat)); vote_states=(map[abs(0)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"]:map(nat, string))]'

ligo dry-run --source="tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="no"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]]:map(address, set(nat))); nextVodeID=(abs(1):nat); vote_names=(map[abs(0)->"TestingVote00"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(5)]:map(nat, nat)); vote_no=(map[abs(0)->abs(1)]:map(nat, nat)); vote_states=(map[abs(0)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"]:map(nat, string))]'

ligo dry-run --source="tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="no"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]]:map(address, set(nat))); nextVodeID=(abs(1):nat); vote_names=(map[abs(0)->"TestingVote00"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(5)]:map(nat, nat)); vote_no=(map[abs(0)->abs(2)]:map(nat, nat)); vote_states=(map[abs(0)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"]:map(nat, string))]'

ligo dry-run --source="tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="no"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]]:map(address, set(nat))); nextVodeID=(abs(1):nat); vote_names=(map[abs(0)->"TestingVote00"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address); ("tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(5)]:map(nat, nat)); vote_no=(map[abs(0)->abs(3)]:map(nat, nat)); vote_states=(map[abs(0)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"]:map(nat, string))]'

ligo dry-run --source="tz1dPHFXz6G7zgHBU6PVZgwnLYGLvxxQykH5" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]]:map(address, set(nat))); nextVodeID=(abs(1):nat); vote_names=(map[abs(0)->"TestingVote00"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address); ("tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB":address); ("tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(5)]:map(nat, nat)); vote_no=(map[abs(0)->abs(4)]:map(nat, nat)); vote_states=(map[abs(0)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"]:map(nat, string))]'
```
