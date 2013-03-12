**Work in progress for the LG Lucid 4G. Repo's based off the i_vzw and iproj projects for the LG Spectrum 4G**


HOW-TO BUILD:
=============

**This short guide assumes you're on Ubuntu 11.04 or above**

Getting the (right) source
--------------------------

First, we need to create directories for the build (system can be whatever you want to name your working directory):

    $ mkdir -p ~/bin

    $ mkdir -p ~/android/system

Now we'll need repo. Let's download it and make it executable:

    $ curl https://dl-ssl.google.com/dl/googlesource/git-repo/repo > ~/bin/repo

    $ chmod a+x ~/bin/repo

Log out and back in so the changes take effect.

Now initialized the repository and pull the source (with my repos attached):

    $ cd ~/android/system/
    
    $ repo init -u git://github.com/CyanogenMod/android.git -b jellybean
    
    $ repo sync

Depending on your connection, this might take awhile.

Getting my repos for the LG Lucid (vs840)
	
	$ cd ~/android/system/device/

	$ mkdir lge

	$ cd lge

	$ git clone https://github.com/playfulgod/android_device_lge_vs840.git vs840

Then cd to the kernel directory:

	$ cd ~/android/system/kernel

	$ mkdir lge

	$ git clone https://github.com/playfulgod/lge-kernel-iproj iproj

Extract necessary binaries and proprietary files 
------------------------------------------------

We will need to reuse some proprietary files from the stock ROM:

    $ cd
    
    $ cd ~/android/system/device/lge/vs840
    
    $ ./extract-files.sh

Building CM10
-------------
Once thats done you can start compiling.

Follow the aosp instructions on setting up the build environment. - http://source.android.com/source/download.html

When the environment is setup, we need to grab a copy of Koush's ROM Manager and the Term.apk. This is necessary to build CM10.

    $ cd ~/android/system/vendor/cm

    $ ./get-prebuilts

Now, we build (system being your work directory):

    $ cd ~/android/system

To build for the LG Lucid 4G:
    
    $ . build/envsetup.sh && brunch vs840


Installing CM10
---------------
If the build was successful, you can now take the update zip found in out/target/product/vs840/ and flash using a custom recovery. Make sure to grab the latest Gapps to complete the experience.

When you want to rebuild with new changes to the BoardConfig.mk or after syncing to the latest CM src make sure to do the following before you recompile.

    $ make clobber



