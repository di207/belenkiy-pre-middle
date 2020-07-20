<?php

/**
 * Class ExporterXML
 */
class ExporterXML
{
    use Products;

    /**
     * Export first 10 products to XML file
     *
     * @return string filename
     */
    public function export()
    {
        $products = $this->getData();
        $xml = [];
        $xml[] = '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>';
        $xml[] = '<products>';

        foreach ($products as $product)
        {
            $xml[] = '<product>';
            $xml[] = "<id>{$product->id}</id>";
            $xml[] = "<title>{$product->title}</title>";
            $xml[] = '</product>';
        }
        $xml[] = "</products>";

        $filename = 'XML/' . time() . '.xml';
        file_put_contents($filename, implode(PHP_EOL, $xml));
        return $filename;
    }
}