##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=BinarySearchTrees
ConfigurationName      :=Debug
WorkspaceConfiguration :=Debug
WorkspacePath          :=/Users/jshan/Documents/courses/udemy/cppDataStructuresAndAlgorithms/cppDataStructuresAndAlgorithms
ProjectPath            :=/Users/jshan/Documents/courses/udemy/cppDataStructuresAndAlgorithms/cppDataStructuresAndAlgorithms/Trees
IntermediateDirectory  :=../build-$(WorkspaceConfiguration)/Trees
OutDir                 :=$(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=J Shan
Date                   :=05/01/2024
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
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)./src/BinarySearchTree $(IncludeSwitch)./src/Node 
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
Objects0=$(IntermediateDirectory)/src_BinarySearchTree_BinarySearchTree.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Node_Node.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) 



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
$(IntermediateDirectory)/src_BinarySearchTree_BinarySearchTree.cpp$(ObjectSuffix): src/BinarySearchTree/BinarySearchTree.cpp $(IntermediateDirectory)/src_BinarySearchTree_BinarySearchTree.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/jshan/Documents/courses/udemy/cppDataStructuresAndAlgorithms/cppDataStructuresAndAlgorithms/Trees/src/BinarySearchTree/BinarySearchTree.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_BinarySearchTree_BinarySearchTree.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_BinarySearchTree_BinarySearchTree.cpp$(DependSuffix): src/BinarySearchTree/BinarySearchTree.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_BinarySearchTree_BinarySearchTree.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_BinarySearchTree_BinarySearchTree.cpp$(DependSuffix) -MM src/BinarySearchTree/BinarySearchTree.cpp

$(IntermediateDirectory)/src_BinarySearchTree_BinarySearchTree.cpp$(PreprocessSuffix): src/BinarySearchTree/BinarySearchTree.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_BinarySearchTree_BinarySearchTree.cpp$(PreprocessSuffix) src/BinarySearchTree/BinarySearchTree.cpp

$(IntermediateDirectory)/src_Node_Node.cpp$(ObjectSuffix): src/Node/Node.cpp $(IntermediateDirectory)/src_Node_Node.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/jshan/Documents/courses/udemy/cppDataStructuresAndAlgorithms/cppDataStructuresAndAlgorithms/Trees/src/Node/Node.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Node_Node.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Node_Node.cpp$(DependSuffix): src/Node/Node.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Node_Node.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Node_Node.cpp$(DependSuffix) -MM src/Node/Node.cpp

$(IntermediateDirectory)/src_Node_Node.cpp$(PreprocessSuffix): src/Node/Node.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Node_Node.cpp$(PreprocessSuffix) src/Node/Node.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/jshan/Documents/courses/udemy/cppDataStructuresAndAlgorithms/cppDataStructuresAndAlgorithms/Trees/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
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


