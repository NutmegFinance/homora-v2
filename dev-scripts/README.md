These are local scripts for setting up an alphahomora dev environment.

# Running tests
- Run bootstrap.sh to install brownie
- Setting up mainnet fork

export WEB3_INFURA_PROJECT_ID=<your infura project id>
brownie console --network mainnet-fork

- Run scripts in console
>>> run('scripts/balancer_spell_wstaking_add_twice_test.py')
