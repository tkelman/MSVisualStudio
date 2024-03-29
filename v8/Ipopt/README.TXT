This file describes how you use the Microsoft Visual Studio files
included in the subdirectories in order to compile Ipopt.

The curtial thing is that you need to get third party code (see the
documentation for Ipopt).  Since some of that is written in Fortran,
you also need to obtain the f2c Fortran to C compiler.

Below, BASDIR refers to the basic directory of your downloaded Ipopt
package.  This is the directory where you find subdirectories like
"BuildTools"

Here are the steps:

1. From netlib, download the file

   http://http://www.netlib.org/f2c/libf2c.zip

   and extract it in

   BASDIR\MSVisualStudio\v8\Ipopt

   so that you will see the file

   BASDIR\MSVisualStudio\v8\Ipopt\libf2c\makefile.vc

2. Open a Visual Studio DOS prompt and go into the directory

   cd BASDIR\MSVisualStudio\v8\Ipopt\libf2c\

   Here, type

   nmake -f makefile.vc all

   (If you see a problem related to the comptry.bat file, edit the
   file makefile.vc and just delete the one occurange of
   'comptry.bat')

3. Download the f2c.exe executable and put it somewhere into your path
   (e.g., C:\Windows)

   You can download it from here:

   http://www.netlib.org/f2c/mswin/

4. Download the Blas, Lapack, and HSL source code as usual; read the
   INSTALL files in the appropriate subdirectories of

   BASDIR\ThirdParty

5. In a DOS window, go to the directory

   BASDIR\MSVisualStudio\v8\ThirdParty\libCoinBlas

   and run the batch file

   convert_blas.bat

   This runs the f2c compiler and generates new C files.

6. Repeat step 5 in the directories

   BASDIR\MSVisualStudio\v8\ThirdParty\libCoinLapack

   BASDIR\MSVisualStudio\v8\ThirdParty\libCoinHSL

   using the convert_*.bat files you find there.

7. (This step is only required if you want to compile the ipopt.exe
   AMPL solver executable)

   Download the ASL code into the directory

   BASDIR\ThirdParty\ASL

   (see the INSTALL file there)

   Then, in a Visual Studio DOS prompt in that directory, type

   copy details.c0 details.c

   nmake -f makefile.vc

   (again, if comptry.bat gives trouble, just delete its occurance in
   the makefile.vc)

8. Done.  Now you can open the solution file

   BASDIR\MSVisualStudio\v8\Ipopt\Ipopt.sln

   This will compile the Ipopt library, and has a C++ example.  If you
   got the ASL source code, you can also compile the ipopt.exe AMPL
   solver executable here.
