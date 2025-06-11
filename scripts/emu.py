import subprocess

EMULATOR = "Pixel_9_Pro"

subprocess.run(["flutter", "emulators", "--launch", EMULATOR], shell=True, check=True)