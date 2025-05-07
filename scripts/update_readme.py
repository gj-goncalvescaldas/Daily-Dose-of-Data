import os
import re

sql_path = 'SQL'
# Conta quantas subpastas há (cada exercício é uma pasta)
total = len([d for d in os.listdir(sql_path) if os.path.isdir(os.path.join(sql_path, d))])

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

