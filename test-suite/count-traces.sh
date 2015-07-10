#!/bin/sh

find . -name \*-int.trace | grep -v .tmpl/ | wc -l
