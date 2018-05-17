echo "------------------------------------------------------------"
echo "|          Available parameter 1: tx1 tx2                   |"
echo "|          Available parameter 2: N621_cfg3 N621_cfg4 N510  |"
echo "------------------------------------------------------------"

if [ $# == 0 ] || [ $# == 1 ]; then
	echo "The parameter is less than 2! Please input the parameter again!"
elif [ $# == 2 ]; then
  if [ $1 == "tx1" ] && [ $2 == "N621_cfg4" ]; then
    sudo cp -rf 64_TX1_patch/Linux_for_Tegra_64_tx1 64_TX1
		echo "Done"
  elif [ $1 == "tx1" ] && [ $2 == "N510" ]; then
    sudo cp -rf 64_TX1_patch/Linux_for_Tegra_64_tx1 64_TX1
		echo "Done"
  elif [ $1 == "tx2" ] && [ $2 == "N621_cfg3" ]; then
    sudo cp -rf 64_TX2_patch/Linux_for_Tegra_tx2 64_TX2
    sudo cp -rf 64_TX2_patch/N621_cfg3/* 64_TX2/Linux_for_Tegra_tx2
		echo "Done"
  elif [ $1 == "tx2" ] && [ $2 == "N621_cfg4" ]; then
    sudo cp -rf 64_TX2_patch/Linux_for_Tegra_tx2 64_TX2
    sudo cp -rf 64_TX2_patch/N621_cfg4/* 64_TX2/Linux_for_Tegra_tx2
		echo "Done"
  elif [ $1 == "tx2" ] && [ $2 == "N510" ]; then
    sudo cp -rf 64_TX2_patch/Linux_for_Tegra_tx2 64_TX2
    sudo cp -rf 64_TX2_patch/N510/* 64_TX2/Linux_for_Tegra_tx2
		echo "Done"
  else
	  echo "Invalid parameter. Please check the available list and input again."
  fi
else
	echo "Too many parameters for configuration."
fi