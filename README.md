# orchidos

## Usage

Clone the repo with armbian/build submodule:

1. `git clone --recurse-submodules https://github.com/kerbilg/orchidos`

Copy the userpatches to armbian folder:

2. `task copy`

Build the image:

3. `task build`

Copy the image to output/:

4. `task get-image`

Resize image to 32Gb:

5. `task resize-image`

Boot the image in a qemu vm:

6. `task boot`