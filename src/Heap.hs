module Heap (Heap (..)) where

import Data.Foldable (foldl')

class Heap h where
    empty     :: Ord a => h a
    isEmpty   :: Ord a => h a -> Bool

    insert    :: Ord a => a -> h a -> h a
    merge     :: Ord a => h a -> h a -> h a

    -- findMin   :: Ord a => h a -> a
    findMin   :: Ord a => h a -> Maybe a
    -- deleteMin :: Ord a => h a -> h a
    deleteMin :: Ord a => h a -> Maybe (h a)

    fromList :: Ord a => [a] -> h a
    fromList = foldl' (flip insert) empty
