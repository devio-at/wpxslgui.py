import os
from tkinter import *
from tkinter import ttk, filedialog, simpledialog
import webbrowser
import lxml.etree as ET

# Main Window controls

edInputFilename: ttk.Entry
edOutputFilename: ttk.Entry
btnGenerate: ttk.Button
btnOpen: ttk.Button

# File Dialogs

def enableBtnGenerate():
    hasFiles = edInputFilename.get() != "" and edOutputFilename.get() != ""
    btnGenerate["state"] = "enabled" if hasFiles else "disabled"

def openInputFile():
    file = filedialog.askopenfile(mode='r', filetypes=[("Wordpress Exports (xml)", "*.xml")])
    if file is not None:
        edInputFilename.delete(0,END)
        edInputFilename.insert(0, file.name)
    enableBtnGenerate()

def openOutputFile():
    fileName = filedialog.SaveAs(filetypes=[("HTML Document", "*.html")]).show()
    if fileName is not None:
        edOutputFilename.delete(0,END)
        edOutputFilename.insert(0, fileName)
    enableBtnGenerate()

# About Dialog

class AboutDialog(simpledialog.Dialog):
    def body(self, master):
        master.grid(row=0, column=0, sticky='ew')
        myLabel = ttk.Label(master, text='wpxslgui.py Version 1.2')
        myLabel.grid(row=0, padx=10, pady=10)
        myLabel = ttk.Label(master, text='A WordPress Export Conversion Tool')
        myLabel.grid(row=1, padx=10, pady=10)
        myLabel = ttk.Label(master, text='(c) devio IT Services 2025')
        myLabel.grid(row=2, padx=10, pady=10)
        link1 = Label(master, text="wpxslgui.py on the Web", fg="blue", cursor="hand2")
        link1.grid(row=3, padx=10, pady=10)
        link1.bind("<Button-1>", lambda e: webbrowser.open_new("https://github.com/devio-at/wpxslgui.py"))

    def buttonbox(self):
        box = Frame(self)

        w = Button(box, text="OK", width=10, command=self.ok, default=ACTIVE)
        w.pack(side=RIGHT, padx=5, pady=5)

        self.bind("<Return>", self.ok)

        box.pack()

    def apply(self):
        pass

def showAbout():
    AboutDialog(mainWindow, "About wpxslgui.py")

# XSLT Files

xsltNames = ['Table of Contents', 'Single HTML', 'Word HTML', 
             'List of Images', 'List of Images (embedded)',
             'List of Links', 'List of Links (linked)']

xsltFiles = ['wp.TOC.1.2.xsl', 'wp.SingleHtml.1.2.xsl', 'wp.WordHtml.1.2.xsl',
             'wp.Images.1.2.xsl', 'wp.InlineImages.1.2.xsl',
             'wp.Links.1.2.xsl', 'wp.InlineLinks.1.2.xsl']

# Generate

def generateFile():
    xml = ET.parse(edInputFilename.get())
    index = xsltNames.index(ddTransformation.get())
    xsltFile = os.path.join("xslt", xsltFiles[index])
    xslt = ET.parse(xsltFile)
    transform = ET.XSLT(xslt)
    dom = transform(xml)
    file = open(edOutputFilename.get(), "w")
    file.write(ET.tounicode(dom, pretty_print=True, method='html'))
    file.close()
    btnOpen["state"] = "enabled"

def openFile():
    webbrowser.open(edOutputFilename.get())

# Main Window

mainWindow = Tk()
mainWindow.title("wpxslgui.py")
mainWindow.geometry("600x200")
mainWindow.iconphoto(False, PhotoImage(file="favicon.gif"))

frm = ttk.Frame(mainWindow, padding=10)
frm.grid(row=0, column=0, sticky='ew')
mainWindow.grid_columnconfigure(0, weight=1)

ttk.Label(frm, text="Wordpress Export").grid(column=0, row=0, padx=10, pady=10, sticky="w")
edInputFilename = ttk.Entry(frm, width=35)
edInputFilename.grid(column=1, row=0, padx=10, pady=10, columnspan=2)
ttk.Button(frm, text="Select...", command=openInputFile).grid(column=3, row=0, padx=10, pady=10)

ttk.Label(frm, text="Transformation").grid(column=0, row=1, padx=10, pady=10, sticky="w")
ddTransformation = ttk.Combobox(frm, width=33, values = xsltNames)
ddTransformation.set(xsltNames[0])
ddTransformation.grid(column=1, row=1, padx=10, pady=10, columnspan=2)

ttk.Label(frm, text="Output File").grid(column=0, row=2, padx=10, pady=10, sticky="w")
edOutputFilename = ttk.Entry(frm, width=35)
edOutputFilename.grid(column=1, row=2, padx=10, pady=10, columnspan=2)
ttk.Button(frm, text="Select...", command=openOutputFile).grid(column=3, row=2, padx=10, pady=10)

ttk.Button(frm, text="About", command=showAbout).grid(column=0, row=3, padx=10, pady=10, sticky="w")
btnGenerate = ttk.Button(frm, text="Generate", command=generateFile)
btnGenerate.grid(column=1, row=3, padx=13, pady=10, sticky="w")
btnGenerate["state"]="disabled"
btnOpen = ttk.Button(frm, text="Open", command=openFile)
btnOpen.grid(column=3, row=3, padx=10, pady=10)
btnOpen["state"]="disabled"

mainWindow.mainloop()
