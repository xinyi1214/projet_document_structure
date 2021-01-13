xquery version "3.1";

module namespace tra="http://localhost:8080/exist/apps/hello/tra";
declare function tra:XMLtoHTML ($node as node(), $model as map (*), $query as xs:string?) {
let $xml:=(
        doc("http://localhost:8080/exist/apps/data/MadameBovary.xml"),
        doc("http://localhost:8080/exist/apps/data/Siddhartha.xml"),
        doc("http://localhost:8080/exist/apps/data/WutheringHeights.xml")
        )
let $xsl := doc("http://localhost:8080/exist/apps/modules/trans_xml_html.xsl")
let $params :=
<parameters>
   {for $p in request:get-parameter-names()
    let $val := request:get-parameter($p,())
    where  not($p = ("document","directory","stylesheet"))
    return
       <param name="{$p}"  value="{$val}"/>
   }
</parameters>

return
    transform:transform($xml, $xsl, $params)
};
