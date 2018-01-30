######################################################################
# Automatically generated by qmake (1.07a) Mon Nov 15 16:21:23 2004
######################################################################
# Adrian Pop [adrpo@ida.liu.se] 2008-10-02
# Adeel Asghar [adeel.asghar@ida.liu.se] 2011-03-05

QT += network core gui xml svg
greaterThan(QT_MAJOR_VERSION, 4) {
    QT *= printsupport widgets webkitwidgets
}

TRANSLATIONS = Resources/nls/OMNotebook_de_DE.ts

TARGET = OMNotebook
TEMPLATE = app

SOURCES += \
    cellapplication.cpp \
    cellparserfactory.cpp \
    stylesheet.cpp \
    cellcommandcenter.cpp \
    chaptercountervisitor.cpp \
    omcinteractiveenvironment.cpp \
    textcell.cpp \
    cellcommands.cpp \
    commandcompletion.cpp \
    ModelicaTextHighlighter.cpp \
    textcursorcommands.cpp \
    cell.cpp \
    printervisitor.cpp \
    treeview.cpp \
    cellcursor.cpp \
    puretextvisitor.cpp \
    updategroupcellvisitor.cpp \
    celldocument.cpp \
    inputcell.cpp  \
    qcombobox_search.cpp \
    updatelinkvisitor.cpp \
    cellfactory.cpp \
    notebook.cpp \
    qtapp.cpp \
    xmlparser.cpp \
    searchform.cpp \
    cellgroup.cpp \
    serializingvisitor.cpp \
    graphcell.cpp \
    latexcell.cpp \
    indent.cpp \
#    evalthread.cpp \
#    ../OMSketch/Tools.cpp \
#    ../OMSketch/Sketch_files.cpp \
#    ../OMSketch/Shapes.cpp \
#    ../OMSketch/Scene_Objects.cpp \
#    ../OMSketch/mainwindow.cpp \
#    ../OMSketch/Line.cpp \
#    ../OMSketch/Graph_Scene.cpp \
#    ../OMSketch/Draw_Triangle.cpp \
#    ../OMSketch/Draw_Text.cpp \
#    ../OMSketch/Draw_RoundRect.cpp \
#    ../OMSketch/Draw_Rectangle.cpp \
#    ../OMSketch/Draw_polygon.cpp \
#    ../OMSketch/Draw_LineArrow.cpp \
#    ../OMSketch/Draw_line.cpp \
#    ../OMSketch/Draw_Ellipse.cpp \
#    ../OMSketch/Draw_Arrow.cpp \
#    ../OMSketch/Draw_Arc.cpp \

HEADERS += \
    application.h \
    command.h \
    serializingvisitor.h \
    cellapplication.h \
    commandunit.h \
    stripstring.h \
    cellcommandcenter.h \
    cursorcommands.h \
    omcinteractiveenvironment.h\
    stylesheet.h \
    cellcommands.h \
    cursorposvisitor.h \
    ModelicaTextHighlighter.h \
    cellcursor.h \
    document.h \
    otherdlg.h \
    textcell.h \
    celldocument.h \
    documentview.h \
    parserfactory.h \
    textcursorcommands.h \
    celldocumentview.h \
    factory.h \
    printervisitor.h\
    treeview.h \
    cellfactory.h \
    puretextvisitor.h \
    updategroupcellvisitor.h \
    cellgroup.h \
    imagesizedlg.h \
    qcombobox_search.h \
    updatelinkvisitor.h \
    cell.h \
    inputcelldelegate.h \
    removehighlightervisitor.h \
    visitor.h \
    cellstyle.h \
    inputcell.h \
    replaceallvisitor.h \
    xmlnodename.h \
    chaptercountervisitor.h \
    nbparser.h \
    resource1.h \
    xmlparser.h \
    commandcenter.h \
    notebookcommands.h \
    rule.h \
    commandcompletion.h \
    notebook.h \
    searchform.h \
    graphcell.h \
    latexcell.h \
    indent.h \
#    evalthread.h \
#    ../OMSketch/Tools.h \
#    ../OMSketch/Sketch_files.h \
#    ../OMSketch/Shapes.h \
#    ../OMSketch/Scene_Objects.h \
#    ../OMSketch/mainwindow.h \
#    ../OMSketch/Line.h \
#    ../OMSketch/Label.h \
#    ../OMSketch/Graph_Scene.h \
#    ../OMSketch/Draw_Triangle.h \
#    ../OMSketch/Draw_Text.h \
#    ../OMSketch/Draw_RoundRect.h \
#    ../OMSketch/Draw_Rectangle.h \
#    ../OMSketch/Draw_polygon.h \
#    ../OMSketch/Draw_LineArrow.h \
#    ../OMSketch/Draw_Line.h \
#    ../OMSketch/Draw_ellipse.h \
#    ../OMSketch/Draw_Arrow.h \
#    ../OMSketch/Draw_Arc.h \
#    ../OMSketch/CustomDialog.h \
#    ../OMSketch/basic.h

FORMS += ImageSizeDlg.ui \
    OtherDlg.ui \
    searchform.ui

win32 {
  QMAKE_LFLAGS += -Wl,--enable-auto-import
  DEFINES += IMPORT_INTO=1
  # win32 vs. win64
  contains(QT_ARCH, i386) { # 32-bit
    QMAKE_LFLAGS += -Wl,--stack,16777216
  } else { # 64-bit
    QMAKE_LFLAGS += -Wl,--stack,33554432
  }
  PLOTLIBS = -L$$(OMBUILDDIR)/build/lib/omc -lOMPlot -lomqwt
  PLOTINC = $$(OMBUILDDIR)/include/omplot \
            $$(OMBUILDDIR)/include/omplot/qwt
  OMCLIBS = -L$$(OMBUILDDIR)/lib/omc -lOpenModelicaCompiler -lOpenModelicaRuntimeC -lfmilib -lModelicaExternalC -lomcgc -lpthread
  OMCINC = $$(OMBUILDDIR)/include/omc/c
} else {
  include(OMNotebook.config)
}

LIBS += $${PLOTLIBS} \
        $${OMCLIBS}
INCLUDEPATH += $${PLOTINC} \
               $${OMCINC} \
               ../../ \
#               ../OMSketch

INCLUDEPATH += .

RESOURCES += res_qt.qrc

RC_FILE = rc_omnotebook.rc

DESTDIR = ../bin

UI_DIR = ../generatedfiles/ui

MOC_DIR = ../generatedfiles/moc

RCC_DIR = ../generatedfiles/rcc

CONFIG += warn_off

ICON = Resources/OMNotebook_icon.icns

QMAKE_INFO_PLIST = Info.plist
