<?php

    // enable php_xsl extension

    $xml = new DomDocument;
    $xml->load("http://www.cinemablend.com/rss.php");

    $xsl = new DomDocument;
    $xsl->load("RSSFeed.xsl");

    $xp = new XsltProcessor();
    $xp->importStylesheet($xsl);
    if($html = $xp->transformToXML($xml)) echo $html;
?>