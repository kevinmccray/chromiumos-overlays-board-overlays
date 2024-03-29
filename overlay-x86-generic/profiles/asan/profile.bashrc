#!/bin/bash
# Copyright (c) 2011 The Chromium Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

# This is a workaround of crosbug.com/20299: Make all ChromeOS modules build fine with Clang.
# Currently only Chrome supports Clang build.
case "${PN}" in
	"chromeos-chrome")
		export CC=clang
		export CXX=clang++
		;;
esac
