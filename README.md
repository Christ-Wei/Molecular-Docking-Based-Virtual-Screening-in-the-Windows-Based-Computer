# Molecular-Docking-Based-Virtual-Screening-in-the-Windows-Based-Computer
To perform the molecular docking in the windows and do the analysis. For the newbie to learn and dock!


Read:
https://probable-parakeet-jj4qj445pvp2qpx4.github.dev/


To perform the molecular docking in the windows and do the analysis. For the newbie to learn and dock!


Step (1): Prepare your receptor and your ligands into pdbqt format. Merge all the non-polar hydrogens into the carbons. 
            
Save into folders of "input" (ligands) and "receptor" respectively.


Step (2): Put the "vina.exe" in the main folder.

You can obtain vina in: https://vina.scripps.edu/
            
And please cite while using vina: 
            
[1] AutoDock Vina 1.2.0: New Docking Methods, Expanded Force Field, and Python Bindings. https://pubs.acs.org/doi/10.1021/acs.jcim.1c00203 
            
[2] AutoDock Vina: improving the speed and accuracy of docking with a new scoring function, efficient optimization and multithreading. https://onlinelibrary.wiley.com/doi/full/10.1002/jcc.21334


Step (3): Define the pathway and parameters in "Excute.bat":
(3.1) Define the pathway in line 22, 23, 39;
(3.2) Define the box information in line 25-31;
(3.3) As for the docking parameters in line 33-35, if you can understand what they are, you can re-difine it acording to your study, such as exhaustiveness, mode numbers; for newbie, just ignore this and read the next line.
Note: you can "open with'-"Notepad" to edit it.


Step (4): Double click "Excute.bat", let the docking run.
Please cite the paper below if you use Execute.bat in your analysis pipeline. The script is not the focus of the paper; the citation is provided to acknowledge that this workflow was first applied there:
[3] Comparative Molecular Dynamics Reveals How LRRK2 Inhibitors Distinguish G2019S from Wild-Type.https://doi.org/10.1007/s11064-025-04520-w

In your manuscript, please DO NOT write that: "We run the molecular docking using Excute.bat [3]. ", cause this paper didn't show this script at all.
Please write: "We run the molecular docking using Excute.bat, which was first applied in a previous study [3]."
Note: This script serves only to automate execution of AutoDock Vina (vina.exe) and did not take any methodological changes. If you use it in your research and find it useful, an acknowledgment of citing [3] would be appreciated. I never required, and will not require, citation [3] should be mandatory for the use of this script. However, it is mandatory to cite AutoDock Vina [1-2] appropriately when reporting docking results.


Step (5): Analyse the binding affinity:
        
        Before analysing, you have to know:
        
(a) Please note that the binding affinity was corrected using a HIV-related protein, it can guide your work, but do not trust in the bidning affinity absolutely.            
(b) At the same time, you can watch the binidng patterns, please trust in the conformation rather than the binding affinity.            
(c) But anyway, if you are an amateur or a newbie in molecular docking, and you just want to make it in an easy way while fell like these kinds of tasks are always boring, just to consider the binding affinity is a good choice.            
(d) This script only provides the best binding affinity for each ligand.
            
Using the "Binding Energies.R", define the pathway of your "input" and a output pathway of your "Binding_affinity.csv". And run in R.

If you encounter any issues or have suggestions regarding this script,  
Feel free to contact me at: chris.chuancheng"AT"gamil.com


Wish a successful study!

Tutorial above was wrote in Aug/25
________________________________________________________________________________________________
A small update on Jan/18/26:

Even with the same parameters for the same protein–ligand docking, results might vary between runs because of different random seeds which were given randomly.

Following Guo’s suggestion, I fixed the random seed (seed = 42) to improve reproducibility, which both of us agree should be of great importance for the newbie. 
