@echo off

REM Scripts wrritten by Chris Wei (chris.chuancheng"AT"gamil.com)

REM Set the Patheway of input and out diles
set "input_folder=./input"
set "output_folder=./output"

REM Get inside the file we set above
cd /d "%input_folder%"

REM Read every pdbqt inside the input fold
for %%F in (*.pdbqt) do (
	REM Set the pathway of Output
    set "output_file=%%~nF_output.pdbqt"
    set "output_path=%output_folder%\!output_file!"

	REM Delete every "new_confg.txt"
    del "config.txt" > nul 2>&1

	REM Construt a new "config.txt" 
    echo receptor = "D:\!!!!!!pathway!!!!\CDK2.pdbqt"> config.txt
    echo ligand = "D:\!!!!!!pathway!!!!\input\%%~nF.pdbqt" >> config.txt
    echo. >> config.txt
    echo center_x = XXXXX >> config.txt
    echo center_y = XXXXX >> config.txt
    echo center_z = XXXXX >> config.txt
    echo. >> config.txt
    echo size_x = XXXXX >> config.txt
    echo size_y = XXXXX >> config.txt
    echo size_z = XXXXX >> config.txt
    echo. >> config.txt
	echo seed = 42 >> config.txt
    echo energy_range = 4 >> config.txt
    echo exhaustiveness = 8 >> config.txt
    echo num_modes = 9 >> config.txt

	REM Excute it
    "D:\!!!!!!pathway!!!!\vina.exe" --config config.txt

	REM Delete the last "configu.txt"
    del "config.txt" > nul 2>&1
)

REM Get back to the original fold
cd /d %~dp0


echo Thanks for using this script! 
echo.
echo.
echo If you encounter any issues or have suggestions regarding this script,  
echo Feel free to contact Chris Wei at: chris.chuancheng"AT"gamil.com
echo.
echo.
echo Please Cite: 
echo [1] AutoDock Vina 1.2.0: New Docking Methods, Expanded Force Field, and Python Bindings. Journal of Chemical Information and Modeling.
echo [2] AutoDock Vina: improving the speed and accuracy of docking with a new scoring function, efficient optimization and multithreading.
echo [3] Comparative Molecular Dynamics Reveals How LRRK2 Inhibitors Distinguish G2019S from Wild-Type.
echo Hope a successful molecular docking!
pause

