@ECHO OFF
CLS
:MENU
ECHO.
ECHO ...............................................
ECHO PRESS 1, 2，3 OR 4 to select your task
ECHO ...............................................
ECHO.
ECHO 1 - Install Env
ECHO 2 - Update Env
ECHO 3 - Compile
ECHO 4 - Run Botty
ECHO.
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO INSTALL
IF %M%==2 GOTO UPDATE
IF %M%==3 GOTO COMPILE
IF %M%==4 GOTO RUN
:INSTALL
conda env create environment.yml
GOTO MENU
:UPDATE
conda env update environment.yml
GOTO MENU
:COMPILE
python ./build.py
GOTO MENU
:RUN
conda activate botty && python src/main.py
GOTO MENU