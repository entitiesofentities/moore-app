xquery version "3.1";

declare namespace tei="http://www.tei-c.org/ns/1.0";

import module namespace config="http://www.tei-c.org/tei-simple/config" at "config.xqm";

declare function local:correct-spaces() {
 let $docs := collection($config:data-default)
 let $xsl:= doc('../resources/xslt/spaces.xsl')
 for $doc in $docs 
 let $contents := transform:transform($doc/tei:TEI, $xsl, ())
 return
    xmldb:store($config:data-default, util:document-name($doc), $contents)  
};

local:correct-spaces()