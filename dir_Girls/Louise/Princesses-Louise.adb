with Ada.Strings.Fixed ;
use  Ada.Strings.Fixed ;
with Ada.Strings.Maps.Constants ;
use  Ada.Strings.Maps.Constants ;

package body Princesses.Louise is
     --------------------------
     -- :[ NAME ]:
     --     Fn_Count
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     function Fn_Count( Base: in String ; Target: in String ) return Integer is
          Count: Integer := 0 ;
     begin
          if Base'Length < Target'Length then
               return Count ;
          end if ;
          for I in Base'First..( Base'Last - Target'Last ) loop
               if Base( I..( I + Target'Last - 1 ) ) = Target then
                    Count := Count + 1 ;
               end if ;
          end loop ;
          return Count ;
     end Fn_Count ;

     --------------------------
     -- :[ NAME ]:
     --     Fn_Replace
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     function Fn_Replace( Base: in String ; Target: in String ; Replacement: in String ) return String is
          I: constant Integer := Index( Base, Target ) ;
          Head: String := Base( Base'First..( I - 1 ) ) ;
          Tail: String := Base( ( I + Target'Last )..Base'Last ) ;
     begin
          return Head & Replacement & Tail ;
     end Fn_Replace ;

     --------------------------
     -- :[ NAME ]:
     --     Fn_Upper_All
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     function Fn_Upper_All( Base: in String ) return String is
     begin
          return Translate( Base, Upper_Case_Map ) ;
     end Fn_Upper_All ;

     --------------------------
     -- :[ NAME ]:
     --     Fn_Lower_All
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     function Fn_Lower_All( Base: in String ) return String is
     begin
          return Translate( Base, Lower_Case_Map ) ;
     end Fn_Lower_All ;

     --------------------------
     -- :[ NAME ]:
     --     Fn_Upper_First
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     function Fn_Upper_First( Base: in String ) return String is
     begin
          return Translate( Base( Base'First..Base'First ), Upper_Case_Map )
                    & Translate( Base( Base'First + 1..Base'Last ), Lower_Case_Map ) ;
     end Fn_Upper_First ;
end Princesses.Louise ;
