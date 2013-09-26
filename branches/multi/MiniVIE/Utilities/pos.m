function p = pos( action, varargin )
% src: comp.soft-sys.matlab "Creating a GUI without using GUIDE"
% pos is called by the function VisualStuff. A construct
% like this makes it "easy" to adjust the sizes of the
% controls.
% In this subroutine I made a mess of [x,y]-coordinates
% and rows and columns. That hole I will fall into.

p = zeros( 1, 4 ) - 999;

nCol = 5;
nRow = 10;
CntrlHeight = 25;
CntrlWidth = 120;
CntrlGap = 6;
CntrlMarg = 6;

FigHeight = nRow * CntrlHeight ...
    + (nRow-1)*CntrlGap ...
    + 2*CntrlMarg ;

switch lower( action )
    case {'fig'},
        FigWidth = nCol * CntrlWidth ...
            + (nCol-1)*CntrlGap ...
            + 2*CntrlMarg ;
        p = [ 250, 350, FigWidth, FigHeight ];

    case {'cntrl'},
        if ( nargin == 5 ),
            [iC,iR,iW,iH] = deal( varargin{:} );
        else
            error( 'pos: Should not occur' ),
        end,

        p(1) = CntrlMarg + (iC-1)*(CntrlWidth+CntrlGap);
        p(2) = FigHeight - CntrlMarg ...
            - iR*CntrlHeight - (iR-1)*CntrlGap;
        p(3) = iW*CntrlWidth + (iW-1)*CntrlGap;
        p(4) = iH*CntrlHeight + (iH-1)*CntrlGap;

    otherwise
        error( 'pos: Should not occur' ),
end %switch
end %pos
%/ ---------------------
