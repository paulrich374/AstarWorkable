JFLAGS = -g
JC = javac
.SUFFIXES: .java .class
.java.class: 
	$(JC) $(JFLAGS) $*.java

CLASSES = \
        Waypoint.java \
        JMapCell.java \
        Map2D.java \
        AStarState.java \
        AStarPathfinder.java \
        AStarApp.java 

default: classes

classes: $(CLASSES:.java=.class)

clean: 
	$(RM) *.class