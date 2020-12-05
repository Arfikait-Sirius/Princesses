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
     procedure fnDispLine( message: String ) is
     begin
          Put_Line( message ) ;
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
