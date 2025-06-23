# 10303_Top_Percentile_Fraud

We aim to identify the most suspicious insurance claims in each state. A claim is considered suspicious if its fraud score falls within the top 5 percentile for that state.

You are provided with a table named `fraud_score`, which contains the following columns:

- `policy_num` (text): The policy number associated with the claim.
- `state` (text): The U.S. state where the claim was filed.
- `claim_cost` (bigint): The cost associated with the insurance claim.
- `fraud_score` (double): A score indicating the likelihood that the claim is fraudulent.

Your task is to return all claims that fall within the top 5 percentile of fraud scores for their respective states.

The output should include the following columns:
- `policy_num`
- `state`
- `claim_cost`
- `fraud_score`
