<?php
spl_autoload_register(function ($class) {
    include $class . '.php';
});

$result = [];

if ($_POST) {
    $CSV = new ExporterCSV();
    // Run export to CSV
    $result['csv'] = $CSV->export();

    $HTML = new ExporterHTML();
    // Run export to HTML
    $result['html'] = $HTML->export();

    $XML = new ExporterXML();
    // Run export to XML
    $result['xml'] = $XML->export();
}
