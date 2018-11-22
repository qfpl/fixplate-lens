module Data.Generics.Fixplate.Lens
  ( Mu(..)
  , _Mu
  , plateMu
  )
where

import Control.Lens.Iso (Iso, iso)
import Control.Lens.Traversal (Traversal')
import Data.Generics.Fixplate.Base (Mu(..))

{-# inline _Mu #-}
_Mu :: Iso (f (Mu f)) (g (Mu g)) (Mu f) (Mu g)
_Mu = iso Fix unFix

{-# inline plateMu #-}
plateMu :: Traversable f => Traversal' (Mu f) (Mu f)
plateMu f = fmap Fix . traverse f . unFix
