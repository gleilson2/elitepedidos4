/*
  # Fix RLS policies for delivery_products table

  1. Security Changes
    - Add INSERT policy for authenticated users on delivery_products table
    - Ensure proper permissions for product management

  2. Changes
    - Allow authenticated users to insert products
    - Maintain existing SELECT policy for public access
*/

-- Add INSERT policy for delivery_products
CREATE POLICY "Allow authenticated insert to delivery_products" 
ON delivery_products 
FOR INSERT 
TO authenticated 
WITH CHECK (true);

-- Add UPDATE policy for delivery_products  
CREATE POLICY "Allow authenticated update to delivery_products"
ON delivery_products
FOR UPDATE
TO authenticated
USING (true);

-- Add DELETE policy for delivery_products
CREATE POLICY "Allow authenticated delete to delivery_products"
ON delivery_products
FOR DELETE
TO authenticated
USING (true);