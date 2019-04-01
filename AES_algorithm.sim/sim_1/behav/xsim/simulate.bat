@echo off
REM ****************************************************************************
REM Vivado (TM) v2017.3 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Mon Apr 01 14:53:49 -0400 2019
REM SW Build 2018833 on Wed Oct  4 19:58:22 MDT 2017
REM
REM Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
call xsim mix_columns_tb_behav -key {Behavioral:sim_1:Functional:mix_columns_tb} -tclbatch mix_columns_tb.tcl -view C:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/S_box_layer_tb_behav.wcfg -view C:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/shift_rows_tb_behav.wcfg -view C:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/bit_8_crypto_mul_tb_behav.wcfg -view C:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/bit_32_crypto_mul_tb_behav.wcfg -view C:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/crypto_mul_32Bit_wrapper_tb_behav.wcfg -view C:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/mix_columns_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
