@echo off
cls
echo Clean up Logs
del /q dns*.txt

echo -----------------------------

echo DNS A List #1
cd 
del /q "dns-a-records-list-1\.terraform.lock.hcl"
del /q "dns-a-records-list-1\terraform.tfstate"
rmdir /s /q "dns-a-records-list-1\.terraform"

echo DNS A List #2
cd 
del /q "dns-a-records-list-2\.terraform.lock.hcl"
del /q "dns-a-records-list-2\terraform.tfstate"
rmdir /s /q "dns-a-records-list-2\.terraform"

echo DNS A List #3
cd 
del /q "dns-a-records-list-3\.terraform.lock.hcl"
del /q "dns-a-records-list-3\terraform.tfstate"
del /q "dns-a-records-list-3\terraform.tfstate.backup"
rmdir /s /q "dns-a-records-list-3\.terraform"

echo DNS A List #4
cd 
del /q "dns-a-records-list-4\.terraform.lock.hcl"
del /q "dns-a-records-list-4\terraform.tfstate"
del /q "dns-a-records-list-4\terraform.tfstate.backup"
rmdir /s /q "dns-a-records-list-4\.terraform"

echo DNS A Create
del /q "dns-a-records-create\.terraform.lock.hcl"
del /q "dns-a-records-create\terraform.tfstate"
del /q "dns-a-records-create\terraform.tfstate.backup"
rmdir /s /q "dns-a-records-create\.terraform"

echo -----------------------------

pause