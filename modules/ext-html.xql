xquery version "3.1";

module namespace pmf="https://teipublisher.com/apps/marianne-moore/custom";
import module namespace config="http://www.tei-c.org/tei-simple/config" at "config.xqm";

declare namespace tei="http://www.tei-c.org/ns/1.0";

declare function pmf:display-genres($rend as xs:string, $text) {
    let $allGenres := ('verse', 'conv', 'prose', 'read')
    let $defaultGenre := $text/@rend
    let $lineGenres := tokenize($rend, '\s+')
    let $lineGenresCorrected := if ($lineGenres = $defaultGenre) then remove($lineGenres, index-of($lineGenres, $defaultGenre)) else $lineGenres
    for $genre in $allGenres 
        let $status := if ($genre = $lineGenresCorrected) then 'active' else 'disabled'
        return 
            <span class="{$genre} {$status}"/>
};

declare function pmf:replaces-spaces($text as text()) {
    replace($text, ' ', ' ')
    };
