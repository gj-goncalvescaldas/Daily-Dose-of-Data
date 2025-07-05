SELECT
  part,
  assembly_step
  
FROM parts_assembly

WHERE 
  assembly_step is NOT NULL AND finish_date is NULL