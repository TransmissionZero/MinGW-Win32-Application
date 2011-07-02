MinGW Win32 Application

This application is an example Windows GUI application, written to demonstrate
how to build Win32 GUI applications with MinGW. It accompanies an article from
my web site, which is located at
http://www.transmissionzero.co.uk/computing/win32-apps-with-mingw/.

To build the application on a Windows machine, simply extract the contents of
this archive to a folder on your computer. Open a command prompt, change to the
directory where you extracted the files, and type �mingw32-make�. The
application should be compiled, linked, and output as �MinGW Win32.exe�.

To build under another operating system, the Makefile will probably require
some small changes. For example, under Fedora the C compiler and resource
compiler are named �i686-pc-mingw32-gcc� and �i686-pc-mingw32-windres�. Also,
your version of the make utility may be named differently�please check the
documentation which came with your MinGW packages.

Disclaimer

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.

Terms of Use

There is no specific license attached to the use this application. You are free
to use it however you see fit, whether for commercial or non-commercial
purposes. The intention is that you use it as a starting point for building
Windows applications, so that you don�t have to write all of your applications
from scratch. You are encouraged to modify it to suit your needs as a Windows
application template, and how you license any applications built with it is
entirely up to you. Of course, you must still comply with the licensing
conditions of the tools you are using to build the application.

Problems?

If you have any problems or questions, please get in contact via
http://www.transmissionzero.co.uk/contact/. Please ensure that you read the
article at http://www.transmissionzero.co.uk/computing/win32-apps-with-mingw/
before sending any questions.

Changelog

2011�07�02 Version 1.1
  � Minor tweaks to the code for consistency between Win16 and Win32 versions.
  � Minor tweaks to the Makefile for consistency.

2011�04�13 Version 1.0
  � Initial release.

Martin Payne
