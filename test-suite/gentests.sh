#!/bin/sh -ex

TESTGEN=`command -v ../fs_test/testgen/testgen || command -v testgen`

rm -r link
$TESTGEN -l link
cp -R link.tmpl/* link/

rm -r mkdir
$TESTGEN -l mkdir
cp -R mkdir.tmpl/* mkdir/

rm -r open
$TESTGEN -l open
cp -R open.tmpl/* open/

rm -r rmdir
$TESTGEN -l rmdir
cp -R rmdir.tmpl/* rmdir/

rm -r unlink
$TESTGEN -l unlink
cp -R unlink.tmpl/* unlink/

rm -r rename
$TESTGEN -l rename
cp -R rename.tmpl/* rename/

rm -r stat
$TESTGEN -l stat

rm -r lstat
$TESTGEN -l lstat

rm -r truncate
$TESTGEN -l truncate

rm -r permissions
$TESTGEN -l permissions
cp -R permissions.tmpl/* permissions/
