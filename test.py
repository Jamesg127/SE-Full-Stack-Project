
import psycopg

conn_str = "postgresql://jamesg127:Dr00lmonster!@10.0.30.7:5432/rocket_league"

with psycopg.connect(conn_str) as conn:
    with conn.cursor() as cur:
        cur.execute("SELECT version();")
        print(cur.fetchone())
import os
from dotenv import load_dotenv

load_dotenv()
conn_str = os.environ["DATABASE_URL"]
