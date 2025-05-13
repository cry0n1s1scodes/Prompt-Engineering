@echo off
setlocal
title Automatic Prompt Engineering Repository Cloner

REM --- Configuration ---
set "REPO_URL=https://github.com/cry0n1s1scodes/Prompt-Engineering.git"
set "REPO_DIR=Prompt-Engineering"
set "GIT_DOWNLOAD_URL=https://git-scm.com/downloads"

REM --- Style and Initial Message ---
color 0B :: Light Aqua on Black background (same as 'color b' if background is black)
echo ======================================================
echo  Automatic Prompt Engineering Repository Cloner
echo  by u/Cry0n1s1scodes
echo ======================================================
echo.
echo This script will attempt to clone the Prompt Engineering repository.
echo.
echo IMPORTANT:
echo   - Make sure you have Git installed on your system.
echo   - Ensure Git is added to your system's PATH environment variable.
echo.
pause
echo.

REM --- Check for Git Installation ---
echo Checking for Git installation...
git --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ------------------------------------------------------
    echo ERROR: Git is not installed or not found in your PATH.
    echo ------------------------------------------------------
    echo Please install Git and ensure it's in your PATH.
    echo You can download Git from: %GIT_DOWNLOAD_URL%
    echo.
    echo Would you like to try opening the Git download page now?
    choice /C YN /N /M "Open Git download page (Y/N)? "
    if errorlevel 1 if not errorlevel 2 start "" "%GIT_DOWNLOAD_URL%"
    goto :EndScript
)
echo Git found. Version:
git --version
echo.

REM --- Check if the repository directory already exists ---
if exist "%REPO_DIR%" (
    echo WARNING: The directory "%REPO_DIR%" already exists.
    choice /C SPU /N /M "Skip cloning (S), attempt to Pull updates (P), or Delete and re-clone (U - Unsafe, use with caution)? "
    if errorlevel 3 (
        echo Deleting existing directory "%REPO_DIR%"...
        rmdir /S /Q "%REPO_DIR%"
        if %ERRORLEVEL% NEQ 0 (
            echo ERROR: Could not delete existing directory "%REPO_DIR%".
            echo Please check permissions or close any programs using it.
            goto :EndScript
        )
        echo Directory deleted. Proceeding with cloning.
        echo.
    ) else if errorlevel 2 if not errorlevel 3 (
        echo Attempting to update (git pull) in "%REPO_DIR%"...
        cd /D "%REPO_DIR%"
        if %ERRORLEVEL% NEQ 0 (
            echo ERROR: Could not navigate to "%REPO_DIR%".
            goto :EndScript
        )
        git pull
        if %ERRORLEVEL% NEQ 0 (
            echo ERROR: "git pull" failed. There might be local changes or merge conflicts.
            echo Please resolve them manually in "%CD%".
            goto :ShowContributorsAndExit
        )
        echo Repository updated successfully in "%CD%" ✅
        goto :ShowContributorsAndExit
    ) else if errorlevel 1 if not errorlevel 2 (
        echo Skipping clone operation as requested.
        echo You can find the existing repository at: %CD%\%REPO_DIR%
        goto :ShowContributorsAndExitIfCdNeeded
    )
)

REM --- Clone the repository ---
echo Cloning repository from %REPO_URL%...
git clone "%REPO_URL%"
if %ERRORLEVEL% NEQ 0 (
    echo ------------------------------------------------------
    echo ERROR: Failed to clone the repository.
    echo ------------------------------------------------------
    echo Possible reasons:
    echo   - No internet connection.
    echo   - Incorrect repository URL or the repository is private/moved.
    echo   - You do not have write permissions to the current directory.
    echo   - The target directory "%REPO_DIR%" might still exist and is not a git repository.
    goto :EndScript
)
echo Repository cloned successfully.
echo.

REM --- Change into the repository directory ---
echo Changing directory to "%REPO_DIR%"...
cd /D "%REPO_DIR%"
if %ERRORLEVEL% NEQ 0 (
    echo ------------------------------------------------------
    echo ERROR: Failed to change directory to "%REPO_DIR%".
    echo ------------------------------------------------------
    echo This usually means the cloning step failed to create the directory.
    goto :EndScript
)
echo Successfully cloned and entered the repository.
echo Location: %CD% ✅
echo.

:ShowContributorsAndExitIfCdNeeded
REM If we skipped cloning but the dir exists, try to CD into it for the final messages
if exist "%REPO_DIR%" (
  cd /D "%REPO_DIR%" >nul 2>&1
)

:ShowContributorsAndExit
echo Contributors:
echo   - Cry0n1s1scodes
echo.

REM --- Offer to open the directory ---
choice /C YN /N /M "Do you want to open the repository folder in Explorer now (Y/N)? "
if errorlevel 1 if not errorlevel 2 (
    echo Opening folder: %CD%
    explorer .
)
echo.
echo Script finished.
goto :EndScript

:EndScript
echo.
echo Press any key to exit...
pause >nul
endlocal
exit /b %ERRORLEVEL%