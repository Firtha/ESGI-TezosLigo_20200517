#!/bin/bash

# Account00 : Create TestingVote00
ligo dry-run --source="tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx" Voting.ligo main 'CreateVote("TestingVote00")' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[]:map(nat, set(nat))); nextVoteID=(abs(0):nat); vote_names=(map[]:map(nat, string)); vote_voters=(map[]:map(nat, set(address))); vote_yes=(map[]:map(nat, nat)); vote_no=(map[]:map(nat, nat)); vote_states=(map[]:map(nat, bool)); vote_result=(map[]:map(nat, string))]'

# Account01 : Create TestingVote01
ligo dry-run --source="tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP" Voting.ligo main 'CreateVote("TestingVote01")' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]]:map(address, set(nat))); nextVoteID=(abs(1):nat); vote_names=(map[abs(0)->"TestingVote00"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(0)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0)]:map(nat, nat)); vote_states=(map[abs(0)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"]:map(nat, string))]'

# Account01 : TestingVote00 -> yes
ligo dry-run --source="tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(0); abs(1)->abs(0)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0); abs(1)->abs(0)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"awaiting"]:map(nat, string))]'

# Account02 : TestingVote00 -> yes
ligo dry-run --source="tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(1); abs(1)->abs(0)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0); abs(1)->abs(0)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"awaiting"]:map(nat, string))]'

# Account03 : TestingVote00 -> yes
ligo dry-run --source="tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(2); abs(1)->abs(0)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0); abs(1)->abs(0)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"awaiting"]:map(nat, string))]'

# Account04 : TestingVote00 -> yes
ligo dry-run --source="tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(3); abs(1)->abs(0)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0); abs(1)->abs(0)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"awaiting"]:map(nat, string))]'

# Account00 : TestingVote01 -> no
ligo dry-run --source="tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx" Voting.ligo main 'TakingVote(record[vote_ID=abs(1); vote_value="no"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(4); abs(1)->abs(0)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0); abs(1)->abs(0)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"awaiting"]:map(nat, string))]'

# Account02 : TestingVote01 -> no
ligo dry-run --source="tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx" Voting.ligo main 'TakingVote(record[vote_ID=abs(1); vote_value="no"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(4); abs(1)->abs(0)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0); abs(1)->abs(1)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"awaiting"]:map(nat, string))]'

# Account03 : TestingVote01 -> no
ligo dry-run --source="tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd" Voting.ligo main 'TakingVote(record[vote_ID=abs(1); vote_value="no"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(4); abs(1)->abs(0)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0); abs(1)->abs(2)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"awaiting"]:map(nat, string))]'

# Account04 : TestingVote01 -> no
ligo dry-run --source="tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY" Voting.ligo main 'TakingVote(record[vote_ID=abs(1); vote_value="no"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(4); abs(1)->abs(0)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0); abs(1)->abs(3)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"awaiting"]:map(nat, string))]'

# Account05 : TestingVote01 -> no
ligo dry-run --source="tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck" Voting.ligo main 'TakingVote(record[vote_ID=abs(1); vote_value="no"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(4); abs(1)->abs(0)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0); abs(1)->abs(4)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"awaiting"]:map(nat, string))]'

# Account06 : TestingVote01 -> no
ligo dry-run --source="tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G" Voting.ligo main 'TakingVote(record[vote_ID=abs(1); vote_value="no"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(4); abs(1)->abs(0)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0); abs(1)->abs(5)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"awaiting"]:map(nat, string))]'

# Account07 : TestingVote01 -> yes
ligo dry-run --source="tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb" Voting.ligo main 'TakingVote(record[vote_ID=abs(1); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(4); abs(1)->abs(0)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0); abs(1)->abs(6)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"awaiting"]:map(nat, string))]'

# Account08 : TestingVote01 -> no
ligo dry-run --source="tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB" Voting.ligo main 'TakingVote(record[vote_ID=abs(1); vote_value="no"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(4); abs(1)->abs(1)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0); abs(1)->abs(6)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"awaiting"]:map(nat, string))]'

# Account09 : TestingVote01 -> no
ligo dry-run --source="tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx" Voting.ligo main 'TakingVote(record[vote_ID=abs(1); vote_value="no"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address); ("tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(4); abs(1)->abs(1)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0); abs(1)->abs(7)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"awaiting"]:map(nat, string))]'

# Account10 : TestingVote01 -> no
ligo dry-run --source="tz1dPHFXz6G7zgHBU6PVZgwnLYGLvxxQykH5" Voting.ligo main 'TakingVote(record[vote_ID=abs(1); vote_value="no"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address); ("tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB":address); ("tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(4); abs(1)->abs(1)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0); abs(1)->abs(8)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->True]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"awaiting"]:map(nat, string))]'

# Account05 : TestingVote00 -> yes
ligo dry-run --source="tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address); ("tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB":address); ("tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx":address); ("tz1dPHFXz6G7zgHBU6PVZgwnLYGLvxxQykH5":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(4); abs(1)->abs(1)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0); abs(1)->abs(9)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->False]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"No"]:map(nat, string))]'

# Account06 : TestingVote00 -> no
ligo dry-run --source="tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address); ("tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB":address); ("tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx":address); ("tz1dPHFXz6G7zgHBU6PVZgwnLYGLvxxQykH5":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(5); abs(1)->abs(1)]:map(nat, nat)); vote_no=(map[abs(0)->abs(0); abs(1)->abs(9)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->False]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"No"]:map(nat, string))]'

# Account07 : TestingVote00 -> no
ligo dry-run --source="tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address); ("tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB":address); ("tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx":address); ("tz1dPHFXz6G7zgHBU6PVZgwnLYGLvxxQykH5":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(5); abs(1)->abs(1)]:map(nat, nat)); vote_no=(map[abs(0)->abs(1); abs(1)->abs(9)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->False]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"No"]:map(nat, string))]'

# Account08 : TestingVote00 -> no
ligo dry-run --source="tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address); ("tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB":address); ("tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx":address); ("tz1dPHFXz6G7zgHBU6PVZgwnLYGLvxxQykH5":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(5); abs(1)->abs(1)]:map(nat, nat)); vote_no=(map[abs(0)->abs(2); abs(1)->abs(9)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->False]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"No"]:map(nat, string))]'

# Account09 : TestingVote00 -> no
ligo dry-run --source="tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address); ("tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address); ("tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB":address); ("tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx":address); ("tz1dPHFXz6G7zgHBU6PVZgwnLYGLvxxQykH5":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(5); abs(1)->abs(1)]:map(nat, nat)); vote_no=(map[abs(0)->abs(3); abs(1)->abs(9)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->False]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"No"]:map(nat, string))]'

# Account10 : TestingVote00 -> yes
ligo dry-run --source="tz1dPHFXz6G7zgHBU6PVZgwnLYGLvxxQykH5" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address); ("tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB":address); ("tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address); ("tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB":address); ("tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx":address); ("tz1dPHFXz6G7zgHBU6PVZgwnLYGLvxxQykH5":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(5); abs(1)->abs(1)]:map(nat, nat)); vote_no=(map[abs(0)->abs(4); abs(1)->abs(9)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->False]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"No"]:map(nat, string))]'


# Awaiting Errors and deny of execution (storage extracted from the state before the last 'Account10 : TestingVote00 -> yes')
# >> Creator try to vote on his own vote
ligo dry-run --source="tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address); ("tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB":address); ("tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address); ("tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB":address); ("tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx":address); ("tz1dPHFXz6G7zgHBU6PVZgwnLYGLvxxQykH5":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(5); abs(1)->abs(1)]:map(nat, nat)); vote_no=(map[abs(0)->abs(4); abs(1)->abs(9)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->False]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"No"]:map(nat, string))]'

# >> Voter that has already voted try to vote again
ligo dry-run --source="tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address); ("tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB":address); ("tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address); ("tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB":address); ("tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx":address); ("tz1dPHFXz6G7zgHBU6PVZgwnLYGLvxxQykH5":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(5); abs(1)->abs(1)]:map(nat, nat)); vote_no=(map[abs(0)->abs(4); abs(1)->abs(9)]:map(nat, nat)); vote_states=(map[abs(0)->True; abs(1)->False]:map(nat, bool)); vote_result=(map[abs(0)->"awaiting"; abs(1)->"No"]:map(nat, string))]'

# >> Voter try to vote on a finished vote
ligo dry-run --source="tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx" Voting.ligo main 'TakingVote(record[vote_ID=abs(0); vote_value="yes"])' 'record[contract_owner=("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); vote_owners=(map[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address)->set[abs(0)]; ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address)->set[abs(1)]]:map(address, set(nat))); nextVoteID=(abs(2):nat); vote_names=(map[abs(0)->"TestingVote00"; abs(1)->"TestingVote01"]:map(nat, string)); vote_voters=(map[abs(0)->set[("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address); ("tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB":address); ("tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx":address); ("tz1dPHFXz6G7zgHBU6PVZgwnLYGLvxxQykH5":address)]; abs(1)->set[("tz1QLne6uZFxPRdRfJG8msx5RouENpJoRsfP":address); ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx":address); ("tz1dEPTZxd9QP6ws9NiKr8kSp1HJnuZ1DhHx":address); ("tz1Tdv6TZypQqFaVXTweM8zr1y4CM9wHpJjd":address); ("tz1aY5NzBg3FnWo2EQiZnA9sxCJbdRPNwsqY":address); ("tz1WhNvAcwgNgRoBvbttcssuDGx3Q4mdfkck":address); ("tz1VPWubjfL8XWNi12nzJDaRMUjVuJDRd47G":address); ("tz1g9MouHrpG2Rp3HWZy4TJpPP5PGZCaucfb":address); ("tz1KiJHTPGnibc6KLAzKaeuM6sMybJtMDEvB":address); ("tz1NkxZpp4rsVezxirTqzFUGPkGrnzkgB3jx":address); ("tz1dPHFXz6G7zgHBU6PVZgwnLYGLvxxQykH5":address)]]:map(nat, set(address))); vote_yes=(map[abs(0)->abs(6); abs(1)->abs(1)]:map(nat, nat)); vote_no=(map[abs(0)->abs(4); abs(1)->abs(9)]:map(nat, nat)); vote_states=(map[abs(0)->False; abs(1)->False]:map(nat, bool)); vote_result=(map[abs(0)->"Yes"; abs(1)->"No"]:map(nat, string))]'