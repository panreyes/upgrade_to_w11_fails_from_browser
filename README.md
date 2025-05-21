# Upgrade to W11 fails if the EXE was executed from a browser

Check it yourself:
- Windows 10 PC
- Decompress Windows 11 ISO in C:\w11iso
- Get AutoIT and compile test_upgrade11.au3 to an EXE
- Upload it somewhere
- Download and execute from a browser: It will fail to start the upgrade with the error 0x8007007F (in C:\$Windows.~BT\Sources\Panther\setuperr.log)
- Execute it again from Windows Explorer: It will go fine.

Please, let me know if you know the reason behind this mystery!
