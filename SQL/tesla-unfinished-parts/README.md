# tesla-unfinished-parts

**DataLemur: Tesla — Unfinished Parts**

Tesla is analyzing production bottlenecks and needs to identify parts that have started assembly but are not yet completed.

You are provided with the `parts_assembly` table, which contains:
- `part` (string): The part being assembled
- `finish_date` (datetime): The date the assembly step was finished (can be null if unfinished)
- `assembly_step` (integer): The step number in the assembly process

Your task is to write a query that returns all parts and their corresponding assembly steps where the `finish_date` is missing, indicating the part is still **unfinished**.

The result should include:
- `part`
- `assembly_step`
