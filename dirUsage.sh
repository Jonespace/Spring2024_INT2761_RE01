#!/bin/bash

#Welcome Message
echo"Welcome to the Directory Storage Utilization Report Tool."
sleep 1
echo"Version 1.0"
sleep 1
echo "Created by Dawud Diaw"
sleep 1
echo "-----------------Start Report Generation-------------"
sleep 1

#Define Report snd File Details
read -p "Enter the directory that you'd like to generate the report for: " dirReport
sleep 1
read -p "Enter the absolute path where you'd like to save the report: " absoPath
sleep 1
read -p "Enter the desired file name for the report: " reportFile
sleep 1

#Define the FUll Path and File Name for Final Report
finalReport=$absoPath/$reportFile.txt

#Generate the Report
echo "------------------Report Header---------------" >> $finalReport
echo "This report was generated by $(whoami)" >> $finalReport
echo "This report was generate on $(date)"  >> $finalReport
echo "--------------------Report Details-------" >> $finalReport
echo "-----------------Report complete-----------" >> $finalReport
sudo du -sh $dirReport >> $finalReport

if [ $? = 0 ]; then
	echo "Report genration was successful. Your is located here: $finalReport";echo "--------Report Complete------" >> $finalReport
else
	echo "An error occured during file generation. Try again."

fi