# 10078_Matching_Similar_Hosts_and_Guests

Find matching pairs of hosts and guests from Airbnb such that each pair has the same gender and nationality. The task is to output the `host_id` and `guest_id` of each valid pair.

## Tables

### airbnb_hosts
- **host_id** (bigint): Unique identifier of the host
- **age** (bigint): Age of the host
- **gender** (text): Gender of the host
- **nationality** (text): Nationality of the host

### airbnb_guests
- **guest_id** (bigint): Unique identifier of the guest
- **age** (bigint): Age of the guest
- **gender** (text): Gender of the guest
- **nationality** (text): Nationality of the guest

## Output
- **host_id** (bigint): ID of the matched host
- **guest_id** (bigint): ID of the matched guest
