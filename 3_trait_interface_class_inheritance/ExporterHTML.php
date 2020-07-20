<?php

/**
 * Class ExporterHTML
 */
class ExporterHTML
{
    use Products;

    /**
     * Export all products to HTML files
     *
     * @return array filenames
     */
    public function export()
    {
        $dir = 'HTML/' . time();
        mkdir($dir);
        $filenames = [];

        $products = $this->getData();

        foreach($products as $product) {
            $file = "{$dir}/{$product->id}.html";
            file_put_contents($file, $this->template($product->id, $product->title));
            $filenames[] = $file;
        }

        return $filenames;
    }

    public function template($productId, $productTitle)
    {
        $html = '<html lang="en">';
        $html .= '<head></head>';
        $html .= '<body>';
        $html .= '<h5>Product ' . $productId . '</h5>';
        $html .= '<div>ID: ' . $productId . '</div>';
        $html .= '<div>Title: ' . $productTitle . '</div>';
        $html .= '</body>';
        $html .= '</html>';
        return $html;
    }
}