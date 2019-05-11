# Prysm validator Ethereum2.0 DAppNode Package

[![DAppNode Available](https://img.shields.io/badge/DAppNode-Available-brightgreen.svg)](http://my.admin.dnp.dappnode.eth/#/installer/%2Fipfs%2FQmcdLWd6NEFdeMjNZL4FVqoepPa2tJ5um3vrdyRGApQMwW)

[![Prysm github](https://img.shields.io/badge/Prysm-Github-blue.svg)](https://alpha.prylabs.net/)
[![Prysm participate](https://img.shields.io/badge/Prysm-website-753a88.svg)](https://alpha.prylabs.net/participate)

# Installation Notes

1. Install the DAppNodePackage: 

   [![DAppNode Install](https://img.shields.io/badge/DAppNode-Install-blue.svg)](http://my.admin.dnp.dappnode.eth/#/installer/%2Fipfs%2FQmcdLWd6NEFdeMjNZL4FVqoepPa2tJ5um3vrdyRGApQMwW)

   **NOTE:** You can choose a password for your account or the package will auto generate a random one automatically at the first start

2. After the installation the beacon-chain and the validator should be running on your DAppNode: http://my.dappnode/#/packages

![](https://imgur.com/11y8pgQ)

3. Go to https://alpha.prylabs.net/participate

    3.1 Skip step one, go to number two (Get GöETH — Test ether) and follow the steps

    3.2 Generate a validator public / private key

    To obtain this data you will have to download a file from your dappnode, to do this:

    * Go to: http://my.dappnode/#/Packages/prysm-validator.public.dappnode.eth
    * File Manager > Download from DNP 
    * Write `/data/deposit_data.txt` and click Download
    * Open the file, and you will get something like this:

        ```
        ========================Deposit Data=======================

        0xbc0000006....

        ===========================================================
        ```
    * Paste the value `0xbc0000006...` in the field `your validator deposit data`
   ![](https://imgur.com/mZVLC6u)
   
    3.2 Skip step four and go to number five (Send a validator deposit) and `Make deposit`.

    3.3 Wait for your validator assignment (it takes a while)
    
    ![](https://imgur.com/fmDspYw)
    
    
**Congratulations! With this you will already have a network validator node on testnet**

You can check it by looking at the validator logs: http://my.dappnode/#/Packages/prysm-validator.public.dappnode.eth

![](https://imgur.com/Sfq88es)


## Note

This is early stage software and it's just a PoC

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details
