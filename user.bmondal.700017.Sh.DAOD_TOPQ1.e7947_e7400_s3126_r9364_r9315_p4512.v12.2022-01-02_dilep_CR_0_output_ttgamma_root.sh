#!/usr/bin/env bash
mkdir -p ./build 
cd ./build 
source /afs/cern.ch/work/b/bmondal/ttgamma-analysis/ttgamma-ntuple-production/addHTCondorSupport/setup.sh 
source */setup.sh 
make -j 8 
cd ../ 
ntuple-skimmer \
 --input /eos/atlas/atlascerngroupdisk/phys-top/toproperties/ttgamma/full_run2_v12/dilep/Vgamma/user.bmondal.700017.Sh.DAOD_TOPQ1.e7947_e7400_s3126_r9364_r9315_p4512.v12.2022-01-02_dilep_CR_0_output_ttgamma_root/user.bmondal.27747737._000001.output_ttgamma.root \
 --input /eos/atlas/atlascerngroupdisk/phys-top/toproperties/ttgamma/full_run2_v12/dilep/Vgamma/user.bmondal.700017.Sh.DAOD_TOPQ1.e7947_e7400_s3126_r9364_r9315_p4512.v12.2022-01-02_dilep_CR_0_output_ttgamma_root/user.bmondal.27747737._000002.output_ttgamma.root \
 --input /eos/atlas/atlascerngroupdisk/phys-top/toproperties/ttgamma/full_run2_v12/dilep/Vgamma/user.bmondal.700017.Sh.DAOD_TOPQ1.e7947_e7400_s3126_r9364_r9315_p4512.v12.2022-01-02_dilep_CR_0_output_ttgamma_root/user.bmondal.27747737._000003.output_ttgamma.root \
 --input /eos/atlas/atlascerngroupdisk/phys-top/toproperties/ttgamma/full_run2_v12/dilep/Vgamma/user.bmondal.700017.Sh.DAOD_TOPQ1.e7947_e7400_s3126_r9364_r9315_p4512.v12.2022-01-02_dilep_CR_0_output_ttgamma_root/user.bmondal.27747737._000004.output_ttgamma.root \
 --input /eos/atlas/atlascerngroupdisk/phys-top/toproperties/ttgamma/full_run2_v12/dilep/Vgamma/user.bmondal.700017.Sh.DAOD_TOPQ1.e7947_e7400_s3126_r9364_r9315_p4512.v12.2022-01-02_dilep_CR_0_output_ttgamma_root/user.bmondal.27747737._000005.output_ttgamma.root \
 --input /eos/atlas/atlascerngroupdisk/phys-top/toproperties/ttgamma/full_run2_v12/dilep/Vgamma/user.bmondal.700017.Sh.DAOD_TOPQ1.e7947_e7400_s3126_r9364_r9315_p4512.v12.2022-01-02_dilep_CR_0_output_ttgamma_root/user.bmondal.27747737._000006.output_ttgamma.root \
 --input /eos/atlas/atlascerngroupdisk/phys-top/toproperties/ttgamma/full_run2_v12/dilep/Vgamma/user.bmondal.700017.Sh.DAOD_TOPQ1.e7947_e7400_s3126_r9364_r9315_p4512.v12.2022-01-02_dilep_CR_0_output_ttgamma_root/user.bmondal.27747737._000007.output_ttgamma.root \
 --input /eos/atlas/atlascerngroupdisk/phys-top/toproperties/ttgamma/full_run2_v12/dilep/Vgamma/user.bmondal.700017.Sh.DAOD_TOPQ1.e7947_e7400_s3126_r9364_r9315_p4512.v12.2022-01-02_dilep_CR_0_output_ttgamma_root/user.bmondal.27747737._000008.output_ttgamma.root \
 --input /eos/atlas/atlascerngroupdisk/phys-top/toproperties/ttgamma/full_run2_v12/dilep/Vgamma/user.bmondal.700017.Sh.DAOD_TOPQ1.e7947_e7400_s3126_r9364_r9315_p4512.v12.2022-01-02_dilep_CR_0_output_ttgamma_root/user.bmondal.27747737._000009.output_ttgamma.root \
 --luminosity 36207.66 \
 --output /eos/home-b/bmondal/physics_analysis/tty/Dilepton/dilepton_mini_ntuple_v12_v1_htcondor/mc16a_TOPQ1_Vgamma700017.1.root \
 --config-file /afs/cern.ch/work/b/bmondal/ttgamma-analysis/ttgamma-ntuple-production/addHTCondorSupport/run/skimming_dilep.cfg \
 --process-particle \
 2>&1 > /eos/home-b/bmondal/physics_analysis/tty/Dilepton/dilepton_mini_ntuple_v12_v1_htcondor/mc16a_TOPQ1_Vgamma700017.1.root.log 
