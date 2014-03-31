obj = Inputs.CpchSerial('COM4');
obj.initialize
obj.addfilter(Inputs.HighPass(15,3,1000));
obj.addfilter(Inputs.Notch([60 120 240 360],5,1,1000));
%%
GUIs.guiSignalViewer(obj)