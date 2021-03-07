with Ada.Text_IO ;
use  Ada.Text_IO ;

package body Emily is
     --------------------------
     -- :[ NAME ]:
     --     fnDispLine
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     procedure fnDispLine( message: in String ) is
     begin
          Put_Line( message ) ;
     end fnDispLine ;
     procedure fnDispLine( number: in Integer ) is
     begin
          Put_Line( Integer'Image( number ) ) ;
     end fnDispLine ;

     --------------------------
     -- :[ NAME ]:
     --     fnDispStr
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     procedure fnDispStr( message: String ) is
     begin
          Put( message ) ;
     end fnDispStr ;

     --------------------------
     -- :[ NAME ]:
     --     fnNewLine
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     procedure fnNewLine is
     begin
          Put_Line( "" ) ;
     end fnNewLine ;
end Emily ;
