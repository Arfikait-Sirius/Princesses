with Ada.Strings.Fixed ;
use  Ada.Strings.Fixed ;
with Ada.Strings.Maps.Constants ;
use  Ada.Strings.Maps.Constants ;

package body Louise is
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
                    & Translate( base( base'First + 1..base'Last), Lower_Case_Map ) ;
     end fnUpperFirst ;
end Louise ;
