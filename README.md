# vibrato_dataset

This is the music vibrato dataset with ground truth for vibrato detection and analysis. If you are using this dataset, please cite [*Luwei Yang, Khalid Z. Rajab and Elaine Chew. Filter Diagonalisation Method for Music Signal Analysis: Frame-wise Vibrato Detection and Estimation, Journal of Mathematics and Music, DOI: 10.1080/17459737.2016.1263897, 2017.*](https://luweiyangqm.files.wordpress.com/2017/05/jmm2017_luwei_yang.pdf)

**Areas_and_parameters** has two instruments, erhu (Chinese two-stringed instrument) and violin. It has ground truth indicating the vibrato areas and also the indications of each half cycle within a vibrato. The latter can be used for calculating vibrato rates and extents. The area ground truth is named as AudioName-Annotation-(new).csv, and the half cycle indication ground truth is named as AudioName-Annotation-Stat.csv.

**Areas_only** has only the ground truth indicating the vibrato areas. It contains **CMMSD** and **Coler2011** dataset. 

- CMMSD wav files is created by Henrik von Coler, I created the vibrato ground truth. If you use it please cite
*von Coler, Henrik, and Alexander Lerch. CMMSD: A Data Set for Note-Level Segmentation of Monophonic Music." Audio Engineering Society Conference: 53rd International Conference: Semantic Audio. Audio Engineering Society, 2014.*

- Coler2011 is the vibrato dataset used in 
*Von Coler, Henrik, and Axel Röbel. "Vibrato detection using cross correlation between temporal energy and fundamental frequency." Audio Engineering Society Convention 131. Audio Engineering Society, 2011.*
The vibrato ground truth is created by von Coler, named as AudioName.txt. I attached a matlab file transferColerTruthData.m to transfer this file into ordinary format of AudioName-Annotation-(new).csv.

Description of some files
- AudioName-Annotation-(new).csv: the area ground truth. You only need to use the first column showing the starting point of each vibrato, and the third column showing the duration.
- AudioName-Annotation-Stat.csv: the half cycle indication ground truth
- AudioName-Yin.csv: the f0 get from pyin
