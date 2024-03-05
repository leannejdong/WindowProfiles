# Python Development Profile

# Set up environment variables
$env:PYTHONPATH = "C:\Users\leanne\AppData\Local\Programs\Python\Python311"

# Set up aliases for commonly used commands
Set-Alias py "python"
Set-Alias pip "python -m pip"
Set-Alias pyenv "python -m venv"
Set-Alias pyclean "python -m pip cache purge"

# Custom functions
function New-PyScript {
    param(
        [string]$name
    )
    $template = @"
#!/usr/bin/env python
# -*- coding: utf-8 -*-

def main():
    pass

if __name__ == "__main__":
    main()
"@
    $template | Out-File "$name.py" -Encoding utf8
    Write-Host "New Python script '$name.py' created."
}

# Save the file

