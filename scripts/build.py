import subprocess

subprocess.run(["dart", "run", "build_runner", "build", "--delete-conflicting-outputs"], check=True, shell=True)