rem Run this from the repo root folder

FOR /F "tokens=*" %%g IN ('call bazel.bat info output_base --ui_event_filters=-INFO') do (SET BAZEL_EXTERNAL=%%g/external)
set PATH=%BAZEL_EXTERNAL%\rust_windows_x86_64\bin;%PATH%