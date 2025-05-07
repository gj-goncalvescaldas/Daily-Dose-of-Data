import os
import re

sql_path = 'SQL'
total = len([f for f in os.listdir(sql_path) if os.path.isfile(os.path.join(sql_path, f))])

with open('README.md', 'r', encoding='utf-8') as file:
    lines = file.readlines()

with open('README.md', 'w', encoding='utf-8') as file:
    for line in lines:
        if line.startswith("- **SQL:**"):
            updated_line = re.sub(r'Total exercises completed: \*\*\d+\*\*',
                                  f'Total exercises completed: **{total}**',
                                  line)
            file.write(updated_line)
        else:
            file.write(line)
