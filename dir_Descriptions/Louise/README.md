# Louise のアサイン方法
```ada
with Princesses ; use Princesses ;
with Princesses.Louise ; use Princesses.Louise ;
```

# 作業スキル
## Fn_Count()
```ada
procedure Sample is
    Base: String := "Princesses Exam. Test for Princesses." ;
    Target: String := "Princesses" ;
    Count: Integer := 0 ;
begin
    Count := Louise.Fn_Count( Base, Target ) ;
    // Count: 2
end Sample ;
```
* 文字列 `Base` に含まれる文字列 `Target` がいくつあるのか数えてくれます

## Fn_Replace()
```ada
procedure Sample is
    Base: String := "Princesses Exam. Test for Princesses." ;
    Target: String := "Princesses" ;
    Replacement: String := "SDK" ;
    Result: String( 1..( Base'Length - Target'Length + Replacement'Length ) ) ;
begin
    Result := Louise.Fn_Replace( Base, Target, Replacement ) ;
    // Result: "SDK Exam. Test for Princesses."
end Sample ;
```
* 文字列 `Base` の文字列 `Target` を文字列 `Replacement` に置き換えてくれます
* 非破壊的スキルなので文字列 `Base` は書き換えません
  * 優しいですね

## Fn_Upper_All()
```ada
procedure Sample is
    Base: String := "pRiNcEsSeS" ;
    Result: String( 1..Base'Length ) ;
begin
    Result := Louise.Fn_Upper_All( Base ) ;
    // Result: "PRINCESSES"
end Sample ;
```
* 文字列 `Base` に含まれる小文字をすべて大文字に変換して教えてくれます
* 非破壊的スキルなので文字列 `Base` は書き換えません

## Fn_Lower_All()
```ada
procedure Sample is
    Base: String := "pRiNcEsSeS" ;
    Result: String( 1..Base'Length ) ;
begin
    Result := Louise.Fn_Lower_All( Base ) ;
    // Result: "princesses"
end Sample ;
```
* 文字列 `Base` に含まれる大文字をすべて小文字に変換して教えてくれます
* 非破壊的スキルなので文字列 `Base` は書き換えません

## Fn_Upper_First()
```ada
procedure Sample is
    Base: String := "pRiNcEsSeS" ;
    Result: String( 1..Base'Length ) ;
begin
    Result := Louise.Fn_Upper_First( Base ) ;
    // Result: "Princesses"
end Sample ;
```
* 文字列 `Base` の先頭 1文字だけ大文字に残りを小文字に変換して教えてくれます
* 非破壊的スキルなので文字列 `Base` は書き換えません
