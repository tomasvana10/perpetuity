import subprocess
import re
import sys

subprocess.run(["dart", "pub", "bump", sys.argv[1]], check=True, shell=True)

with open("pubspec.yaml", "r", encoding="utf-8") as f:
    for line in f:
        match = re.match(r"^version:\s*([\d\.]+.*)", line)
        if match:
            version = match.group(1).strip()
            break
    else:
        raise ValueError("No version found in pubspec.yaml")


subprocess.run(["git", "add", "pubspec.yaml"], check=True)
subprocess.run(["git", "commit", "-m", version], check=True)
subprocess.run(["git", "tag", "v" + version], check=True)

if "push" in sys.argv:
    subprocess.run(["git", "push"], check=True)
    subprocess.run(["git", "push", "--tags"], check=True)