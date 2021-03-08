with Ada.Strings.Fixed ;
use  Ada.Strings.Fixed ;
with Ada.Strings.Maps.Constants ;
use  Ada.Strings.Maps.Constants ;

package body Louise is
     --------------------------
     -- :[ NAME ]:
     --     Fn_Count
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     function Fn_Count( base: in String ; target: in String ) return Integer is
          count: Integer := 0 ;
     begin
          if base'Length < target'Length then
               return count ;
          end if ;
          for i in base'First..( base'Last - target'Last ) loop
               if base( i..( i + target'Last - 1 ) ) = target then
                    count := count + 1 ;
               end if ;
          end loop ;
          return count ;
     end Fn_Count ;

     --------------------------
     -- :[ NAME ]:
     --     Fn_Upper_All
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     function Fn_Upper_All( base: in String ) return String is
     begin
          return Translate( base, Upper_Case_Map ) ;
     end Fn_Upper_All ;

     --------------------------
     -- :[ NAME ]:
     --     Fn_Lower_All
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     function Fn_Lower_All( base: in String ) return String is
     begin
          return Translate( base, Lower_Case_Map ) ;
     end Fn_Lower_All ;

     --------------------------
     -- :[ NAME ]:
     --     Fn_Upper_First
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     function Fn_Upper_First( base: in String ) return String is
     begin
          return Translate( base( base'First..base'First ), Upper_Case_Map )
                    & Translate( base( base'First + 1..base'Last ), Lower_Case_Map ) ;
     end Fn_Upper_First ;
end Louise ;
