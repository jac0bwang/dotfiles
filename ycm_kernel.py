
#show-includes:
#	@$(foreach include, $(LINUXINCLUDE), echo $(include);)
#	@$(foreach include, $(USERINCLUDE), echo $(include);)
import os

CURRENT_DIR = os.path.dirname(os.path.abspath(__file__))

include_dirs = [
	'./arch/arm/include',
	'./arch/arm/include/generated',
	',/arch/arm/include/generated/uapi',
	'./arch/arm/include/uapi',
	'./include',
	'./include/generated/uapi',
	'./include/uapi',
	'./include',
]

include_files = [
    './include/linux/kconfig.h',
]

flags = [
    '-D__KERNEL__',
    '-std=gnu89',
    '-xc',
    '-nostdinc',
]

def FlagsForFile( filename, **kwargs ):
    """
    Given a source file, retrieves the flags necessary for compiling it.
    """
    for dir in include_dirs:
        flags.append('-I' + os.path.join(CURRENT_DIR, dir))

    for file in include_files:
        flags.append('-include' + os.path.join(CURRENT_DIR, file))

    return { 'flags': flags }
