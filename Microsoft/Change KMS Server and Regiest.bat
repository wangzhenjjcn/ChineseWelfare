@echo off
set /p key=KeyDown Your Key:
slmgr /ipk %key%
slmgr /skms kms.xspace.in
slmgr /ato