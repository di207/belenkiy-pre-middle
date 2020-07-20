<?php

/**
 * Class ExporterCSV
 */
class ExporterCSV
{
    use Products;

    /**
     * Export all products to CSV file
     */
    public function export()
    {
        $filename = 'CSV/' . time() . '.csv';

        $products = $this->getData();

        ob_start();
        $csv = fopen($filename, 'w');
        foreach($products as $product) {
            fputcsv($csv, [$product->id, $product->title]);
        }
        fclose($csv);
        ob_get_clean();

        return $filename;
    }
}