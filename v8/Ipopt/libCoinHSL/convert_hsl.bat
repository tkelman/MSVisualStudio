@echo off
rem Copyright (C) 2007 International Business Machines and others.
rem All Rights Reserved.
rem This file is distributed under the Common Public License.
rem
rem Author:   Andreas Waechter              IBM     2007-06-14

@rem $Id$

f2c ..\..\..\..\ThirdParty\HSL\ma27ad.f
f2c ..\..\..\..\ThirdParty\HSL\mc19ad.f

move ..\..\..\..\ThirdParty\HSL\*.c .
