certoraRun ../spec/harnesses/VaultHarness.sol \
  ../spec/harnesses/PTokenA.sol ../spec/harnesses/PTokenB.sol \
  ../spec/harnesses/DummyERC20A.sol ../spec/harnesses/DummyERC20B.sol \
  ../spec/harnesses/SimpleStrategy.sol \
  --verify VaultHarness:../spec/vault.spec \
  --cache vault \
  --solc solc5.11 \
  --settings -assumeUnwindCond,-b=2,-t=150,-enableStorageAnalysis=true,-ignoreViewFunctions,-copyLoopUnroll=2 \
  --rule $1 --staging --settings -ciMode=true,-graphDrawLimit=0,-globalTimeout=23000,-adaptiveSolverConfig=false \
  --msg "Vault verification"