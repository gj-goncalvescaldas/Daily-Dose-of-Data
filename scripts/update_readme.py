import os
import re

# Caminhos das pastas
sql_path = 'SQL'
daily_path = 'Daily Question'

# Contagem de subpastas (1 exercício = 1 pasta)
sql_total = len([d for d in os.listdir(sql_path) if os.path.isdir(os.path.join(sql_path, d))])
daily_total = len([d for d in os.listdir(daily_path) if os.path.isdir(os.path.join(daily_path, d))])

# Atualiza README.md
with open('README.md', 'r', encoding='utf-8') as file:
    lines = file.readlines()

with open('README.md', 'w', encoding='utf-8') as file:
    in_stats_section = False
    daily_written = False

    for line in lines:
        if line.strip() == "## ✅ Current Stats":
            in_stats_section = True
            file.write(line)
            continue

        if in_stats_section:
            if line.startswith("- **SQL:**"):
                updated_sql = f"- **SQL:** Total exercises completed: **{sql_total}**\n"
                file.write(updated_sql)
            elif line.startswith("- **Daily Question"):
                updated_daily = f"- **Daily Question (Python 3):** Total exercises completed: **{daily_total}**\n"
                file.write(updated_daily)
                daily_written = True
            elif line.startswith("## "):  # Fim da seção de stats
                if not daily_written:
                    file.write(f"- **Daily Question (Python 3):** Total exercises completed: **{daily_total}**\n")
                file.write(line)
                in_stats_section = False
            else:
                file.write(line)
        else:
            file.write(line)

    # Se for o final do ficheiro e ainda não escreveu a linha do Daily
    if in_stats_section and not daily_written:
        file.write(f"- **Daily Question (Python 3):** Total exercises completed: **{daily_total}**\n")
        
