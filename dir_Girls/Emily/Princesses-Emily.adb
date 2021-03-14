with Ada.Text_IO ;
use  Ada.Text_IO ;

package body Princesses.Emily is
     --------------------------
     -- :[ NAME ]:
     --     Fn_Disp_Line
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     procedure Fn_Disp_Line( message: in String ) is
     begin
          Put_Line( message ) ;
     end Fn_Disp_Line ;

     --------------------------
     -- :[ NAME ]:
     --     Fn_Disp_Str
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     procedure Fn_Disp_Str( message: String ) is
     begin
          Put( message ) ;
     end Fn_Disp_Str ;

     --------------------------
     -- :[ NAME ]:
     --     Fn_New_Line
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     procedure Fn_New_Line is
     begin
          Put_Line( "" ) ;
     end Fn_New_Line ;
end Princesses.Emily ;
