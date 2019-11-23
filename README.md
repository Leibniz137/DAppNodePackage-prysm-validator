# Prysm validator Ethereum2.0 DAppNode Package

[![DAppNode Available](https://img.shields.io/badge/DAppNode-Available-brightgreen.svg)](http://my.dappnode/#/installer/prysm-validator.public.dappnode.eth)

[![Prysm github](https://img.shields.io/badge/Prysm-Github-blue.svg)](https://prylabs.net/)
[![Prysm participate](https://img.shields.io/badge/Prysm-website-753a88.svg)](https://prylabs.net/participate)

# Installation Notes

1. Install the DAppNodePackage: 

   [![DAppNode Install](https://img.shields.io/badge/DAppNode-Install-blue.svg)](http://my.admin.dnp.dappnode.eth/#/installer/%2Fipfs%2FQmb6E3GRREeDveyg7AHBQGMTPLa2u53YE3QLhXiE88Jbo8)

   **NOTE:** You can choose a password for your account or the package will auto generate a random one automatically at the first start

2. After the installation the beacon-chain and the validator should be running on your DAppNode: http://my.dappnode/#/packages

![](https://i.imgur.com/11y8pgQ.png)

# Post-Installation Instructions

Go to https://prylabs.net/participate

* Skip step 1

* Go to step 2 (Get GöETH — Test ether) and follow the steps

* Generate a validator public / private key

    To obtain this data you will have to download a file from your DAppNode:

    * Go to: http://my.dappnode/#/Packages/prysm-validator.public.dappnode.eth/file-manager
        
    * Write `/data/deposit_data.txt` and click Download

        ![](https://i.imgur.com/66P7Aei.png)

    * Open the file, and you will get something like this:

        ```
        ========================Deposit Data=======================

        0xbc0000006....

        ===========================================================
        ```
        
    * Paste the value `0xbc0000006...` in the field `your validator deposit data`

        ![](https://i.imgur.com/mZVLC6u.png)
   
* Skip step 4 
* Go to step 5 (Send a validator deposit) and `Make deposit`.

    ![](https://i.imgur.com/nvfy5Qu.png)


* Wait for your validator assignment (it takes a while)
    
    ![](https://i.imgur.com/fmDspYw.png)
    
    
**Congratulations! With this you will already have a network validator node on testnet**

You can check it by looking at the validator [logs](http://my.dappnode/#/Packages/prysm-validator.public.dappnode.eth/logs)

![](https://i.imgur.com/Sfq88es.png)

## Note

This is early stage software and it's just a PoC

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details
