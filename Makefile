## WATCOM Environment

## Common build flags

VERBOSE  = -dVERBOSE

USE_2E = -dLPC_CFG_ALT

CL16     = wcl
FLAGS16  = -5 -bt=dos
AFLAGS16 = $(USE_2E) $(FLAGS16)
VFLAGS16 = $(VERBOSE) $(FLAGS16)

## Individual Files

### LPCEN
LPCEN_FILES = lpcen.c lpc.c
LPCEN_OBJ   = lpcen.o lpc.o
LPCEN_EXE   = lpcen.exe
LPCEN2_EXE  = lpcen2.exe

### LPCCMD
LPCCMD_FILES = lpccmd.c lpc.c
LPCCMD_OBJ   = lpccmd.o lpc.o
LPCCMD_EXE   = lpccmd.exe
LPCCMD2_EXE  = lpccmd2.exe

### LPCFCHK
LPCFCHK_FILES = lpcfchk.c lpc.c fintek.c
LPCFCHK_OBJ   = lpcfchk.o lpc.o fintek.o
LPCFCHK_EXE   = lpcfchk.exe
LPCFCHK2_EXE  = lpcfchk2.exe

### PCICMD
PCICMD_FILES = pcicmd.c helper.c
PCICMD_OBJ   = pcicmd.o helper.o
PCICMD_EXE   = pcicmd.exe

### PCIDUMP
PCIDUMP_FILES = pcidump.c helper.c
PCIDUMP_OBJ   = pcidump.o helper.o
PCIDUMP_EXE   = pcidump.exe

### AMDPMCMD
AMDPMCMD_FILES = amdpmcmd.c helper.c
AMDPMCMD_OBJ   = amdpmcmd.o helper.o
AMDPMCMD_EXE   = amdpmcmd.exe

### GENCMD
GENCMD_FILES = gencmd.c helper.c
GENCMD_OBJ   = gencmd.o helper.o
GENCMD_EXE   = gencmd.exe

### LPCISA/LPCISAV
LPCISA_FILES  = helper.c intel.c amd.c main.c
LPCISA_OBJ    = helper.o intel.o amd.o main.o
LPCISA_EXE    = lpcisa.exe
LPCISAV_EXE   = lpcisav.exe

all:   lpcen.exe lpccmd.exe lpcfchk.exe lpcen2.exe lpccmd2.exe lpcfchk2.exe pcicmd.exe pcidump.exe amdpmcmd.exe gencmd.exe lpcisa.exe lpcisav.exe

lpcen.exe: 
	$(CL16) $(FLAGS16) -fe=$(LPCEN_EXE) $(LPCEN_FILES)

lpccmd.exe:
	$(CL16) $(FLAGS16) -fe=$(LPCCMD_EXE) $(LPCCMD_FILES)

lpcfchk.exe:
	$(CL16) $(FLAGS16) -fe=$(LPCFCHK_EXE) $(LPCFCHK_FILES)

lpcen2.exe:
	$(CL16) $(AFLAGS16) -fe=$(LPCEN2_EXE) $(LPCEN_FILES)

lpccmd2.exe:
	$(CL16) $(AFLAGS16) -fe=$(LPCCMD2_EXE) $(LPCCMD_FILES)

lpcfchk2.exe:
	$(CL16) $(AFLAGS16) -fe=$(LPCFCHK2_EXE) $(LPCFCHK_FILES)

pcicmd.exe:
	$(CL16) $(FLAGS16) -fe=$(PCICMD_EXE) $(PCICMD_FILES)

pcidump.exe:
	$(CL16) $(FLAGS16) -fe=$(PCIDUMP_EXE) $(PCIDUMP_FILES)

lpcisa.exe:
	$(CL16) $(FLAGS16) -fe=$(LPCISA_EXE) $(LPCISA_FILES)

lpcisav.exe:
	$(CL16) $(VFLAGS16) -fe=$(LPCISAV_EXE) $(LPCISA_FILES)

amdpmcmd.exe:
	$(CL16) $(FLAGS16) -fe=$(AMDPMCMD_EXE) $(AMDPMCMD_FILES)

gencmd.exe:
	$(CL16) $(FLAGS16) -fe=$(GENCMD_EXE) $(GENCMD_FILES)

clean: .SYMBOLIC
	-rm $(LPCEN_OBJ)
	-rm $(LPCCMD_OBJ)
	-rm $(LPCFCHK_OBJ)
	-rm $(PCICMD_OBJ)
	-rm $(PCIDUMP_OBJ)
	-rm $(LPCISA_OBJ)
	-rm $(AMDPMCMD_OBJ)
	-rm $(GENCMD_OBJ)
	-rm $(LPCEN_EXE)
	-rm $(LPCEN2_EXE)
	-rm $(LPCCMD_EXE)
	-rm $(LPCCMD2_EXE)
	-rm $(LPCFCHK_EXE)
	-rm $(LPCFCHK2_EXE)
	-rm $(PCICMD_EXE)
	-rm $(PCIDUMP_EXE)
	-rm $(LPCISA_EXE)
	-rm $(LPCISAV_EXE)
	-rm $(AMDPMCMD_EXE)
	-rm $(GENCMD_EXE)
