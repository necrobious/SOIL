{-# LANGUAGE CPP,ForeignFunctionInterface #-}
module Graphics.Rendering.OpenGL.SOIL where


#include "cbits/SOIL.h" 

import Foreign.C.String
import Foreign.C.Types

foreign import ccall "SOIL.h SOIL_load_OGL_texture"
  c_SOIL_load_OGL_texture :: CString -> CInt -> CUInt -> CUInt -> IO CUInt 

load_OGL_texture :: CString -> CInt -> CUInt -> CUInt -> IO CUInt 
load_OGL_texture = c_SOIL_load_OGL_texture
