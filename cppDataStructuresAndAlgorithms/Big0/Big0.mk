##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Big0
ConfigurationName      :=Debug
WorkspaceConfiguration :=Debug
WorkspacePath          :=/Users/jshan/Documents/courses/udemy/cppDataStructuresAndAlgorithms/cppDataStructuresAndAlgorithms
ProjectPath            :=/Users/jshan/Documents/courses/udemy/cppDataStructuresAndAlgorithms/cppDataStructuresAndAlgorithms/Big0
IntermediateDirectory  :=../build-$(WorkspaceConfiguration)/Big0
OutDir                 :=$(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=J Shan
Date                   :=05/12/2023
CodeLitePath           :=/Users/jshan/.codelite
MakeDirCommand         :=mkdir -p
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -dynamiclib -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputDirectory        :=/Users/jshan/Documents/courses/udemy/cppDataStructuresAndAlgorithms/cppDataStructuresAndAlgorithms/build-$(WorkspaceConfiguration)/bin
OutputFile             :=../build-$(WorkspaceConfiguration)/bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)./src/BigON $(IncludeSwitch)./src/BigON2 $(IncludeSwitch)./src/BigO1 $(IncludeSwitch)./src/BigOMultiInput 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overridden using an environment variable
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -O0 -gdwarf-2 -std=c++17 -Wall $(Preprocessors)
CFLAGS   :=  -gdwarf-2 -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/Applications/codelite.app/Contents/SharedSupport/
Objects0=$(IntermediateDirectory)/src_BigON2_BigON2.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_BigO1_BigO1.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_BigOMultiInput_BigOMultiInput.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_BigON_BigON.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) "$(IntermediateDirectory)"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "$(IntermediateDirectory)"
	@$(MakeDirCommand) "$(OutputDirectory)"

$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "$(IntermediateDirectory)"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_BigON2_BigON2.cpp$(ObjectSuffix): src/BigON2/BigON2.cpp $(IntermediateDirectory)/src_BigON2_BigON2.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/jshan/Documents/courses/udemy/cppDataStructuresAndAlgorithms/cppDataStructuresAndAlgorithms/Big0/src/BigON2/BigON2.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_BigON2_BigON2.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_BigON2_BigON2.cpp$(DependSuffix): src/BigON2/BigON2.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_BigON2_BigON2.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_BigON2_BigON2.cpp$(DependSuffix) -MM src/BigON2/BigON2.cpp

$(IntermediateDirectory)/src_BigON2_BigON2.cpp$(PreprocessSuffix): src/BigON2/BigON2.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_BigON2_BigON2.cpp$(PreprocessSuffix) src/BigON2/BigON2.cpp

$(IntermediateDirectory)/src_BigO1_BigO1.cpp$(ObjectSuffix): src/BigO1/BigO1.cpp $(IntermediateDirectory)/src_BigO1_BigO1.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/jshan/Documents/courses/udemy/cppDataStructuresAndAlgorithms/cppDataStructuresAndAlgorithms/Big0/src/BigO1/BigO1.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_BigO1_BigO1.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_BigO1_BigO1.cpp$(DependSuffix): src/BigO1/BigO1.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_BigO1_BigO1.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_BigO1_BigO1.cpp$(DependSuffix) -MM src/BigO1/BigO1.cpp

$(IntermediateDirectory)/src_BigO1_BigO1.cpp$(PreprocessSuffix): src/BigO1/BigO1.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_BigO1_BigO1.cpp$(PreprocessSuffix) src/BigO1/BigO1.cpp

$(IntermediateDirectory)/src_BigOMultiInput_BigOMultiInput.cpp$(ObjectSuffix): src/BigOMultiInput/BigOMultiInput.cpp $(IntermediateDirectory)/src_BigOMultiInput_BigOMultiInput.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/jshan/Documents/courses/udemy/cppDataStructuresAndAlgorithms/cppDataStructuresAndAlgorithms/Big0/src/BigOMultiInput/BigOMultiInput.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_BigOMultiInput_BigOMultiInput.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_BigOMultiInput_BigOMultiInput.cpp$(DependSuffix): src/BigOMultiInput/BigOMultiInput.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_BigOMultiInput_BigOMultiInput.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_BigOMultiInput_BigOMultiInput.cpp$(DependSuffix) -MM src/BigOMultiInput/BigOMultiInput.cpp

$(IntermediateDirectory)/src_BigOMultiInput_BigOMultiInput.cpp$(PreprocessSuffix): src/BigOMultiInput/BigOMultiInput.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_BigOMultiInput_BigOMultiInput.cpp$(PreprocessSuffix) src/BigOMultiInput/BigOMultiInput.cpp

$(IntermediateDirectory)/src_BigON_BigON.cpp$(ObjectSuffix): src/BigON/BigON.cpp $(IntermediateDirectory)/src_BigON_BigON.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/jshan/Documents/courses/udemy/cppDataStructuresAndAlgorithms/cppDataStructuresAndAlgorithms/Big0/src/BigON/BigON.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_BigON_BigON.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_BigON_BigON.cpp$(DependSuffix): src/BigON/BigON.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_BigON_BigON.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_BigON_BigON.cpp$(DependSuffix) -MM src/BigON/BigON.cpp

$(IntermediateDirectory)/src_BigON_BigON.cpp$(PreprocessSuffix): src/BigON/BigON.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_BigON_BigON.cpp$(PreprocessSuffix) src/BigON/BigON.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/jshan/Documents/courses/udemy/cppDataStructuresAndAlgorithms/cppDataStructuresAndAlgorithms/Big0/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


