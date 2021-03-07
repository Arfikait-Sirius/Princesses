with Ada.Strings.Fixed ;
use  Ada.Strings.Fixed ;
with Ada.Strings.Maps.Constants ;
use  Ada.Strings.Maps.Constants ;
with Ada.Text_IO ;

package body Louise is
     --------------------------
     -- :[ NAME ]:
     --     fnCount
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     function fnCount( base: in String ; target: in String ) return Integer is
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
     end fnCount ;
     --------------------------
     -- :[ NAME ]:
     --     fnUpperAll
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     function fnUpperAll( base: in String ) return String is
     begin
          return Translate( base, Upper_Case_Map ) ;
     end fnUpperAll ;

     --------------------------
     -- :[ NAME ]:
     --     fnLowerAll
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     function fnLowerAll( base: in String ) return String is
     begin
          return Translate( base, Lower_Case_Map ) ;
     end fnLowerAll ;

     --------------------------
     -- :[ NAME ]:
     --     fnUpperFirst
     --
     -- :[ CATEGORY ]:
     --     Skill
     --------------------------
     function fnUpperFirst( base: in String ) return String is
     begin
          return Translate( base( base'First..base'First ), Upper_Case_Map )
                    & Translate( base( base'First + 1..base'Last ), Lower_Case_Map ) ;
     end fnUpperFirst ;
end Louise ;
