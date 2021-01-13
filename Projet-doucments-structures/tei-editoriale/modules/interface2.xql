xquery version "3.1";

module namespace int="http://localhost:8080/exist/apps/hello/int";
declare namespace tei="http://www.tei-c.org/ns/1.0";
declare default element namespace "http://www.tei-c.org/ns/1.0";
import module namespace config="http://localhost:8080/exist/apps/hello/config" at "config.xqm";
import module namespace app="http://localhost:8080/exist/apps/hello/templates" at "app.xql";
import module namespace templates="http://exist-db.org/xquery/templates" ;
import module namespace transform="http://exist-db.org/xquery/transform" ;
import module namespace kwic = "http://exist-db.org/xquery/kwic" at "resource:org/exist/xquery/lib/kwic.xql";
import module namespace ft = "http://exist-db.org/xquery/lucene";
declare namespace functx = 'http://www.functx.com';


declare function int:cherche-author($node as node(), $model as map (*)) {
    let $article:=(
        doc("/db/apps/hello/data/MadameBovary.xml"),
        doc("/db/apps/hello/data/Siddhartha.xml"),
        doc("/db/apps/hello/data/WutheringHeights.xml")
        )
    for $titre in $article//tei:title
    let $auteur:= $titre/following-sibling::*[1]
    return <p>{distinct-values($auteur/text())}</p>

};

declare function int:cherche-titre($node as node(), $model as map(*)){
    let $article:=(
        doc("/db/apps/hello/data/MadameBovary.xml"),
        doc("/db/apps/hello/data/Siddhartha.xml"),
        doc("/db/apps/hello/data/WutheringHeights.xml")
        )
    for $titre in $article//tei:title
    return <p>{distinct-values($titre/text())}</p>
};

