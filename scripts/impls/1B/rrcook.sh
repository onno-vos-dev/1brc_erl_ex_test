#!/usr/bin/env bash
source ./common.sh
mkdir -p "${outdir}"
data_path=$1

cd "${impldir}/rrcook/brc"
ln -sf "${data_path}" ./measurements.txt
($branchcmd && $timecmd ./brc ./measurements.txt 2>&1) > "${outdir}/rrcook.1B.txt"
cd "${owd}"