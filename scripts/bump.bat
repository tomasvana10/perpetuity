setlocal enabledelayedexpansion

dart pub bump %*

for /f "tokens=2 delims=:" %%A in ('findstr /B /C:"version:" pubspec.yaml') do (
    set version=%%A
)

for /f "tokens=* delims= " %%A in ("!version!") do set version=%%A

git add pubspec.yaml
git commit -m "v%version%"
git tag v%version%

echo made tag v%version%

git push && git push --tags
