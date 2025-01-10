#### submit_job.sh START ####
#!/bin/bash
#$ -cwd
#$ -o ./joblog.$JOB_ID.txt                   #set the job log output file
#$ -j y                                      #set error = Merged with joblog
#$ -l h_rt=1:00:00,h_data=1G      #specify requested resources (h_rt gives time request in 'hrs:mins:secs' format) (h_data specifies requested RAM per task) (highp=TRUE means run it on Aguillon Lab owned nodes)
#$ -pe shared 1                              #specify number of CPUs requested

#run fastP (v0.23.4) with the following parameters
#-f 5 #trim front 5
#-h xxx.html #output html file and write it to the file named 'xxx.html'
#--cut_right #means cut all bases to the right when you hit a sliding window of bad quality
#--cut_right_window_size 5 #means set sliding window size to 5
#--cut_right_mean_quality 30 #means cut when avg phred score drops below 30 for the given 5bp sliding window

#make directory to hold output data
#mkdir fastp.out

#define 'files' variable
files="P_hybrid_44696
P_hybrid_44703
P_hybrid_44707
P_hybrid_44708
P_hybrid_44709
P_hybrid_44712
P_hybrid_44762
P_hybrid_44771
P_hybrid_44781
P_hybrid_45171
P_hybrid_45173
P_hybrid_45174
P_ludovicianus_11998
P_ludovicianus_21721
P_ludovicianus_25286
P_ludovicianus_26595
P_ludovicianus_33988
P_ludovicianus_34776
P_ludovicianus_34779
P_ludovicianus_34782
P_ludovicianus_34830
P_ludovicianus_44704
P_ludovicianus_44705
P_ludovicianus_44706
P_ludovicianus_44710
P_ludovicianus_44711
P_ludovicianus_44713
P_ludovicianus_44714
P_ludovicianus_44715
P_ludovicianus_44716
P_ludovicianus_44717
P_ludovicianus_44718
P_ludovicianus_44719
P_ludovicianus_44720
P_ludovicianus_44721
P_ludovicianus_44722
P_ludovicianus_44723
P_ludovicianus_44726
P_ludovicianus_44727
P_ludovicianus_44729
P_ludovicianus_44730
P_ludovicianus_44731
P_ludovicianus_44732
P_ludovicianus_44733
P_ludovicianus_44734
P_ludovicianus_44735
P_ludovicianus_44737
P_ludovicianus_44738
P_ludovicianus_44739
P_ludovicianus_44740
P_ludovicianus_44741
P_ludovicianus_44742
P_ludovicianus_44743
P_ludovicianus_44744
P_ludovicianus_44745
P_ludovicianus_44746
P_ludovicianus_44747
P_ludovicianus_44748
P_ludovicianus_44749
P_ludovicianus_44753
P_ludovicianus_44754
P_ludovicianus_44761
P_ludovicianus_44775
P_melanocephalus_34890
P_melanocephalus_39985
P_melanocephalus_43110
P_melanocephalus_43276
P_melanocephalus_44346
P_melanocephalus_44347
P_melanocephalus_44471
P_melanocephalus_44651
P_melanocephalus_44660
P_melanocephalus_44661
P_melanocephalus_44666
P_melanocephalus_44674
P_melanocephalus_44675
P_melanocephalus_44676
P_melanocephalus_44677
P_melanocephalus_44678
P_melanocephalus_44679
P_melanocephalus_44680
P_melanocephalus_44681
P_melanocephalus_44683
P_melanocephalus_44684
P_melanocephalus_44685
P_melanocephalus_44686
P_melanocephalus_44687
P_melanocephalus_44688
P_melanocephalus_44689
P_melanocephalus_44692
P_melanocephalus_44693
P_melanocephalus_44694
P_melanocephalus_44695
P_melanocephalus_44697
P_melanocephalus_44699
P_melanocephalus_44700
P_melanocephalus_44702
P_melanocephalus_44752
P_melanocephalus_44760
P_melanocephalus_44763
P_melanocephalus_44764
P_melanocephalus_44765
P_melanocephalus_44766
P_melanocephalus_44767
P_melanocephalus_44769
P_melanocephalus_44770
P_melanocephalus_44772
P_melanocephalus_44773
P_melanocephalus_44774
P_melanocephalus_44776
P_melanocephalus_44777
P_melanocephalus_44778
P_melanocephalus_44779
P_melanocephalus_44780
P_melanocephalus_44782
P_melanocephalus_44784
P_melanocephalus_44786
P_melanocephalus_44787
P_melanocephalus_44788
P_melanocephalus_44789
P_melanocephalus_44790
P_melanocephalus_44791
P_melanocephalus_44792
P_melanocephalus_44793
P_melanocephalus_44794
P_melanocephalus_44795
P_melanocephalus_44796
P_melanocephalus_44797
P_melanocephalus_44798
P_melanocephalus_44799
P_melanocephalus_44801
P_melanocephalus_44802
P_melanocephalus_44803
P_melanocephalus_44804
P_melanocephalus_44805
P_melanocephalus_44806
P_melanocephalus_44808
P_melanocephalus_44809
P_melanocephalus_44810
P_melanocephalus_44836
P_melanocephalus_44837
P_melanocephalus_44840
P_melanocephalus_44842
P_melanocephalus_44843
P_melanocephalus_44844
P_melanocephalus_44845
P_melanocephalus_44846
P_melanocephalus_44847
P_melanocephalus_44848
P_melanocephalus_44853
P_melanocephalus_44854
P_melanocephalus_45175
P_melanocephalus_45200
P_melanocephalus_45232
P_melanocephalus_45709
P_melanocephalus_45926
P_melanocephalus_48011
P_melanocephalus_48012
P_melanocephalus_48013
P_melanocephalus_48014"

#run fastp in a loop over all samples:
for sample in $files
do
/u/project/aguillon/shared_bin/fastp -i fastq/${sample}.fq.gz -o fastp.out/${sample}.fq.gz -f 5 -h fastp.out/${sample}.html
done

