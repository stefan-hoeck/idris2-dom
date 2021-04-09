module Web.Internal.WebglPrim
 
import JS
import Web.Internal.Types
 

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------


namespace WebGLActiveInfo
  
  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : WebGLActiveInfo -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.size"
  prim__size : WebGLActiveInfo -> PrimIO GLint
  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : WebGLActiveInfo -> PrimIO GLenum










namespace WebGLShaderPrecisionFormat
  
  export
  %foreign "browser:lambda:x=>x.precision"
  prim__precision : WebGLShaderPrecisionFormat -> PrimIO GLint
  
  export
  %foreign "browser:lambda:x=>x.rangeMax"
  prim__rangeMax : WebGLShaderPrecisionFormat -> PrimIO GLint
  
  export
  %foreign "browser:lambda:x=>x.rangeMin"
  prim__rangeMin : WebGLShaderPrecisionFormat -> PrimIO GLint






--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace WebGL2RenderingContextBase
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.beginQuery(a b c)"
  prim__beginQuery :  WebGL2RenderingContextBase
                   -> GLenum
                   -> WebGLQuery
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.beginTransformFeedback(a b)"
  prim__beginTransformFeedback :  WebGL2RenderingContextBase
                               -> GLenum
                               -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.bindBufferBase(a b c d)"
  prim__bindBufferBase :  WebGL2RenderingContextBase
                       -> GLenum
                       -> GLuint
                       -> Nullable WebGLBuffer
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.bindBufferRange(a b c d e f)"
  prim__bindBufferRange :  WebGL2RenderingContextBase
                        -> GLenum
                        -> GLuint
                        -> Nullable WebGLBuffer
                        -> GLintptr
                        -> GLsizeiptr
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.bindSampler(a b c)"
  prim__bindSampler :  WebGL2RenderingContextBase
                    -> GLuint
                    -> Nullable WebGLSampler
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.bindTransformFeedback(a b c)"
  prim__bindTransformFeedback :  WebGL2RenderingContextBase
                              -> GLenum
                              -> Nullable WebGLTransformFeedback
                              -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.bindVertexArray(a b)"
  prim__bindVertexArray :  WebGL2RenderingContextBase
                        -> Nullable WebGLVertexArrayObject
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k)=>x.blitFramebuffer(a b c d e f g h i j k)"
  prim__blitFramebuffer :  WebGL2RenderingContextBase
                        -> GLint
                        -> GLint
                        -> GLint
                        -> GLint
                        -> GLint
                        -> GLint
                        -> GLint
                        -> GLint
                        -> GLbitfield
                        -> GLenum
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.clearBufferfi(a b c d e)"
  prim__clearBufferfi :  WebGL2RenderingContextBase
                      -> GLenum
                      -> GLint
                      -> GLfloat
                      -> GLint
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.clearBufferfv(a b c d e)"
  prim__clearBufferfv :  WebGL2RenderingContextBase
                      -> GLenum
                      -> GLint
                      -> Float32List
                      -> UndefOr GLuint
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.clearBufferiv(a b c d e)"
  prim__clearBufferiv :  WebGL2RenderingContextBase
                      -> GLenum
                      -> GLint
                      -> Int32List
                      -> UndefOr GLuint
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.clearBufferuiv(a b c d e)"
  prim__clearBufferuiv :  WebGL2RenderingContextBase
                       -> GLenum
                       -> GLint
                       -> Uint32List
                       -> UndefOr GLuint
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.clientWaitSync(a b c d)"
  prim__clientWaitSync :  WebGL2RenderingContextBase
                       -> WebGLSync
                       -> GLbitfield
                       -> GLuint64
                       -> PrimIO GLenum
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.compressedTexImage3D(a b c d e f g h i j)"
  prim__compressedTexImage3D :  WebGL2RenderingContextBase
                             -> GLenum
                             -> GLint
                             -> GLenum
                             -> GLsizei
                             -> GLsizei
                             -> GLsizei
                             -> GLint
                             -> GLsizei
                             -> GLintptr
                             -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k)=>x.compressedTexImage3D(a b c d e f g h i j k)"
  prim__compressedTexImage3D1 :  WebGL2RenderingContextBase
                              -> GLenum
                              -> GLint
                              -> GLenum
                              -> GLsizei
                              -> GLsizei
                              -> GLsizei
                              -> GLint
                              -> ArrayBufferView
                              -> UndefOr GLuint
                              -> UndefOr GLuint
                              -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k,l)=>x.compressedTexSubImage3D(a b c d e f g h i j k l)"
  prim__compressedTexSubImage3D :  WebGL2RenderingContextBase
                                -> GLenum
                                -> GLint
                                -> GLint
                                -> GLint
                                -> GLint
                                -> GLsizei
                                -> GLsizei
                                -> GLsizei
                                -> GLenum
                                -> GLsizei
                                -> GLintptr
                                -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k,l,m)=>x.compressedTexSubImage3D(a b c d e f g h i j k l m)"
  prim__compressedTexSubImage3D1 :  WebGL2RenderingContextBase
                                 -> GLenum
                                 -> GLint
                                 -> GLint
                                 -> GLint
                                 -> GLint
                                 -> GLsizei
                                 -> GLsizei
                                 -> GLsizei
                                 -> GLenum
                                 -> ArrayBufferView
                                 -> UndefOr GLuint
                                 -> UndefOr GLuint
                                 -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.copyBufferSubData(a b c d e f)"
  prim__copyBufferSubData :  WebGL2RenderingContextBase
                          -> GLenum
                          -> GLenum
                          -> GLintptr
                          -> GLintptr
                          -> GLsizeiptr
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.copyTexSubImage3D(a b c d e f g h i j)"
  prim__copyTexSubImage3D :  WebGL2RenderingContextBase
                          -> GLenum
                          -> GLint
                          -> GLint
                          -> GLint
                          -> GLint
                          -> GLint
                          -> GLint
                          -> GLsizei
                          -> GLsizei
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.createQuery(a)"
  prim__createQuery : WebGL2RenderingContextBase -> PrimIO (Nullable WebGLQuery)
  
  export
  %foreign "browser:lambda:(x,a)=>x.createSampler(a)"
  prim__createSampler :  WebGL2RenderingContextBase
                      -> PrimIO (Nullable WebGLSampler)
  
  export
  %foreign "browser:lambda:(x,a)=>x.createTransformFeedback(a)"
  prim__createTransformFeedback :  WebGL2RenderingContextBase
                                -> PrimIO (Nullable WebGLTransformFeedback)
  
  export
  %foreign "browser:lambda:(x,a)=>x.createVertexArray(a)"
  prim__createVertexArray :  WebGL2RenderingContextBase
                          -> PrimIO (Nullable WebGLVertexArrayObject)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.deleteQuery(a b)"
  prim__deleteQuery :  WebGL2RenderingContextBase
                    -> Nullable WebGLQuery
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.deleteSampler(a b)"
  prim__deleteSampler :  WebGL2RenderingContextBase
                      -> Nullable WebGLSampler
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.deleteSync(a b)"
  prim__deleteSync :  WebGL2RenderingContextBase
                   -> Nullable WebGLSync
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.deleteTransformFeedback(a b)"
  prim__deleteTransformFeedback :  WebGL2RenderingContextBase
                                -> Nullable WebGLTransformFeedback
                                -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.deleteVertexArray(a b)"
  prim__deleteVertexArray :  WebGL2RenderingContextBase
                          -> Nullable WebGLVertexArrayObject
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.drawArraysInstanced(a b c d e)"
  prim__drawArraysInstanced :  WebGL2RenderingContextBase
                            -> GLenum
                            -> GLint
                            -> GLsizei
                            -> GLsizei
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.drawBuffers(a b)"
  prim__drawBuffers : WebGL2RenderingContextBase -> Array GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.drawElementsInstanced(a b c d e f)"
  prim__drawElementsInstanced :  WebGL2RenderingContextBase
                              -> GLenum
                              -> GLsizei
                              -> GLenum
                              -> GLintptr
                              -> GLsizei
                              -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.drawRangeElements(a b c d e f g)"
  prim__drawRangeElements :  WebGL2RenderingContextBase
                          -> GLenum
                          -> GLuint
                          -> GLuint
                          -> GLsizei
                          -> GLenum
                          -> GLintptr
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.endQuery(a b)"
  prim__endQuery : WebGL2RenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.endTransformFeedback(a)"
  prim__endTransformFeedback : WebGL2RenderingContextBase -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.fenceSync(a b c)"
  prim__fenceSync :  WebGL2RenderingContextBase
                  -> GLenum
                  -> GLbitfield
                  -> PrimIO (Nullable WebGLSync)
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.framebufferTextureLayer(a b c d e f)"
  prim__framebufferTextureLayer :  WebGL2RenderingContextBase
                                -> GLenum
                                -> GLenum
                                -> Nullable WebGLTexture
                                -> GLint
                                -> GLint
                                -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getActiveUniformBlockName(a b c)"
  prim__getActiveUniformBlockName :  WebGL2RenderingContextBase
                                  -> WebGLProgram
                                  -> GLuint
                                  -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.getActiveUniformBlockParameter(a b c d)"
  prim__getActiveUniformBlockParameter :  WebGL2RenderingContextBase
                                       -> WebGLProgram
                                       -> GLuint
                                       -> GLenum
                                       -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.getActiveUniforms(a b c d)"
  prim__getActiveUniforms :  WebGL2RenderingContextBase
                          -> WebGLProgram
                          -> Array GLuint
                          -> GLenum
                          -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.getBufferSubData(a b c d e f)"
  prim__getBufferSubData :  WebGL2RenderingContextBase
                         -> GLenum
                         -> GLintptr
                         -> ArrayBufferView
                         -> UndefOr GLuint
                         -> UndefOr GLuint
                         -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getFragDataLocation(a b c)"
  prim__getFragDataLocation :  WebGL2RenderingContextBase
                            -> WebGLProgram
                            -> String
                            -> PrimIO GLint
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getIndexedParameter(a b c)"
  prim__getIndexedParameter :  WebGL2RenderingContextBase
                            -> GLenum
                            -> GLuint
                            -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.getInternalformatParameter(a b c d)"
  prim__getInternalformatParameter :  WebGL2RenderingContextBase
                                   -> GLenum
                                   -> GLenum
                                   -> GLenum
                                   -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getQueryParameter(a b c)"
  prim__getQueryParameter :  WebGL2RenderingContextBase
                          -> WebGLQuery
                          -> GLenum
                          -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getQuery(a b c)"
  prim__getQuery :  WebGL2RenderingContextBase
                 -> GLenum
                 -> GLenum
                 -> PrimIO (Nullable WebGLQuery)
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getSamplerParameter(a b c)"
  prim__getSamplerParameter :  WebGL2RenderingContextBase
                            -> WebGLSampler
                            -> GLenum
                            -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getSyncParameter(a b c)"
  prim__getSyncParameter :  WebGL2RenderingContextBase
                         -> WebGLSync
                         -> GLenum
                         -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getTransformFeedbackVarying(a b c)"
  prim__getTransformFeedbackVarying :  WebGL2RenderingContextBase
                                    -> WebGLProgram
                                    -> GLuint
                                    -> PrimIO (Nullable WebGLActiveInfo)
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getUniformBlockIndex(a b c)"
  prim__getUniformBlockIndex :  WebGL2RenderingContextBase
                             -> WebGLProgram
                             -> String
                             -> PrimIO GLuint
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getUniformIndices(a b c)"
  prim__getUniformIndices :  WebGL2RenderingContextBase
                          -> WebGLProgram
                          -> Array String
                          -> PrimIO (Nullable (Array GLuint))
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.invalidateFramebuffer(a b c)"
  prim__invalidateFramebuffer :  WebGL2RenderingContextBase
                              -> GLenum
                              -> Array GLenum
                              -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.invalidateSubFramebuffer(a b c d e f g)"
  prim__invalidateSubFramebuffer :  WebGL2RenderingContextBase
                                 -> GLenum
                                 -> Array GLenum
                                 -> GLint
                                 -> GLint
                                 -> GLsizei
                                 -> GLsizei
                                 -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.isQuery(a b)"
  prim__isQuery :  WebGL2RenderingContextBase
                -> Nullable WebGLQuery
                -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.isSampler(a b)"
  prim__isSampler :  WebGL2RenderingContextBase
                  -> Nullable WebGLSampler
                  -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.isSync(a b)"
  prim__isSync :  WebGL2RenderingContextBase
               -> Nullable WebGLSync
               -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.isTransformFeedback(a b)"
  prim__isTransformFeedback :  WebGL2RenderingContextBase
                            -> Nullable WebGLTransformFeedback
                            -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.isVertexArray(a b)"
  prim__isVertexArray :  WebGL2RenderingContextBase
                      -> Nullable WebGLVertexArrayObject
                      -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a)=>x.pauseTransformFeedback(a)"
  prim__pauseTransformFeedback : WebGL2RenderingContextBase -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.readBuffer(a b)"
  prim__readBuffer : WebGL2RenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.renderbufferStorageMultisample(a b c d e f)"
  prim__renderbufferStorageMultisample :  WebGL2RenderingContextBase
                                       -> GLenum
                                       -> GLsizei
                                       -> GLenum
                                       -> GLsizei
                                       -> GLsizei
                                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.resumeTransformFeedback(a)"
  prim__resumeTransformFeedback : WebGL2RenderingContextBase -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.samplerParameterf(a b c d)"
  prim__samplerParameterf :  WebGL2RenderingContextBase
                          -> WebGLSampler
                          -> GLenum
                          -> GLfloat
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.samplerParameteri(a b c d)"
  prim__samplerParameteri :  WebGL2RenderingContextBase
                          -> WebGLSampler
                          -> GLenum
                          -> GLint
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k)=>x.texImage3D(a b c d e f g h i j k)"
  prim__texImage3D :  WebGL2RenderingContextBase
                   -> GLenum
                   -> GLint
                   -> GLint
                   -> GLsizei
                   -> GLsizei
                   -> GLsizei
                   -> GLint
                   -> GLenum
                   -> GLenum
                   -> GLintptr
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k)=>x.texImage3D(a b c d e f g h i j k)"
  prim__texImage3D1 :  WebGL2RenderingContextBase
                    -> GLenum
                    -> GLint
                    -> GLint
                    -> GLsizei
                    -> GLsizei
                    -> GLsizei
                    -> GLint
                    -> GLenum
                    -> GLenum
                    -> TexImageSource
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k)=>x.texImage3D(a b c d e f g h i j k)"
  prim__texImage3D2 :  WebGL2RenderingContextBase
                    -> GLenum
                    -> GLint
                    -> GLint
                    -> GLsizei
                    -> GLsizei
                    -> GLsizei
                    -> GLint
                    -> GLenum
                    -> GLenum
                    -> Nullable ArrayBufferView
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k,l)=>x.texImage3D(a b c d e f g h i j k l)"
  prim__texImage3D3 :  WebGL2RenderingContextBase
                    -> GLenum
                    -> GLint
                    -> GLint
                    -> GLsizei
                    -> GLsizei
                    -> GLsizei
                    -> GLint
                    -> GLenum
                    -> GLenum
                    -> ArrayBufferView
                    -> GLuint
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.texStorage2D(a b c d e f)"
  prim__texStorage2D :  WebGL2RenderingContextBase
                     -> GLenum
                     -> GLsizei
                     -> GLenum
                     -> GLsizei
                     -> GLsizei
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.texStorage3D(a b c d e f g)"
  prim__texStorage3D :  WebGL2RenderingContextBase
                     -> GLenum
                     -> GLsizei
                     -> GLenum
                     -> GLsizei
                     -> GLsizei
                     -> GLsizei
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k,l)=>x.texSubImage3D(a b c d e f g h i j k l)"
  prim__texSubImage3D :  WebGL2RenderingContextBase
                      -> GLenum
                      -> GLint
                      -> GLint
                      -> GLint
                      -> GLint
                      -> GLsizei
                      -> GLsizei
                      -> GLsizei
                      -> GLenum
                      -> GLenum
                      -> GLintptr
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k,l)=>x.texSubImage3D(a b c d e f g h i j k l)"
  prim__texSubImage3D1 :  WebGL2RenderingContextBase
                       -> GLenum
                       -> GLint
                       -> GLint
                       -> GLint
                       -> GLint
                       -> GLsizei
                       -> GLsizei
                       -> GLsizei
                       -> GLenum
                       -> GLenum
                       -> TexImageSource
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k,l,m)=>x.texSubImage3D(a b c d e f g h i j k l m)"
  prim__texSubImage3D2 :  WebGL2RenderingContextBase
                       -> GLenum
                       -> GLint
                       -> GLint
                       -> GLint
                       -> GLint
                       -> GLsizei
                       -> GLsizei
                       -> GLsizei
                       -> GLenum
                       -> GLenum
                       -> Nullable ArrayBufferView
                       -> UndefOr GLuint
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.transformFeedbackVaryings(a b c d)"
  prim__transformFeedbackVaryings :  WebGL2RenderingContextBase
                                  -> WebGLProgram
                                  -> Array String
                                  -> GLenum
                                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.uniform1ui(a b c)"
  prim__uniform1ui :  WebGL2RenderingContextBase
                   -> Nullable WebGLUniformLocation
                   -> GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform1uiv(a b c d e)"
  prim__uniform1uiv :  WebGL2RenderingContextBase
                    -> Nullable WebGLUniformLocation
                    -> Uint32List
                    -> UndefOr GLuint
                    -> UndefOr GLuint
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniform2ui(a b c d)"
  prim__uniform2ui :  WebGL2RenderingContextBase
                   -> Nullable WebGLUniformLocation
                   -> GLuint
                   -> GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform2uiv(a b c d e)"
  prim__uniform2uiv :  WebGL2RenderingContextBase
                    -> Nullable WebGLUniformLocation
                    -> Uint32List
                    -> UndefOr GLuint
                    -> UndefOr GLuint
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform3ui(a b c d e)"
  prim__uniform3ui :  WebGL2RenderingContextBase
                   -> Nullable WebGLUniformLocation
                   -> GLuint
                   -> GLuint
                   -> GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform3uiv(a b c d e)"
  prim__uniform3uiv :  WebGL2RenderingContextBase
                    -> Nullable WebGLUniformLocation
                    -> Uint32List
                    -> UndefOr GLuint
                    -> UndefOr GLuint
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.uniform4ui(a b c d e f)"
  prim__uniform4ui :  WebGL2RenderingContextBase
                   -> Nullable WebGLUniformLocation
                   -> GLuint
                   -> GLuint
                   -> GLuint
                   -> GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform4uiv(a b c d e)"
  prim__uniform4uiv :  WebGL2RenderingContextBase
                    -> Nullable WebGLUniformLocation
                    -> Uint32List
                    -> UndefOr GLuint
                    -> UndefOr GLuint
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniformBlockBinding(a b c d)"
  prim__uniformBlockBinding :  WebGL2RenderingContextBase
                            -> WebGLProgram
                            -> GLuint
                            -> GLuint
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.uniformMatrix2x3fv(a b c d e f)"
  prim__uniformMatrix2x3fv :  WebGL2RenderingContextBase
                           -> Nullable WebGLUniformLocation
                           -> GLboolean
                           -> Float32List
                           -> UndefOr GLuint
                           -> UndefOr GLuint
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.uniformMatrix2x4fv(a b c d e f)"
  prim__uniformMatrix2x4fv :  WebGL2RenderingContextBase
                           -> Nullable WebGLUniformLocation
                           -> GLboolean
                           -> Float32List
                           -> UndefOr GLuint
                           -> UndefOr GLuint
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.uniformMatrix3x2fv(a b c d e f)"
  prim__uniformMatrix3x2fv :  WebGL2RenderingContextBase
                           -> Nullable WebGLUniformLocation
                           -> GLboolean
                           -> Float32List
                           -> UndefOr GLuint
                           -> UndefOr GLuint
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.uniformMatrix3x4fv(a b c d e f)"
  prim__uniformMatrix3x4fv :  WebGL2RenderingContextBase
                           -> Nullable WebGLUniformLocation
                           -> GLboolean
                           -> Float32List
                           -> UndefOr GLuint
                           -> UndefOr GLuint
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.uniformMatrix4x2fv(a b c d e f)"
  prim__uniformMatrix4x2fv :  WebGL2RenderingContextBase
                           -> Nullable WebGLUniformLocation
                           -> GLboolean
                           -> Float32List
                           -> UndefOr GLuint
                           -> UndefOr GLuint
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.uniformMatrix4x3fv(a b c d e f)"
  prim__uniformMatrix4x3fv :  WebGL2RenderingContextBase
                           -> Nullable WebGLUniformLocation
                           -> GLboolean
                           -> Float32List
                           -> UndefOr GLuint
                           -> UndefOr GLuint
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.vertexAttribDivisor(a b c)"
  prim__vertexAttribDivisor :  WebGL2RenderingContextBase
                            -> GLuint
                            -> GLuint
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.vertexAttribI4i(a b c d e f)"
  prim__vertexAttribI4i :  WebGL2RenderingContextBase
                        -> GLuint
                        -> GLint
                        -> GLint
                        -> GLint
                        -> GLint
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.vertexAttribI4iv(a b c)"
  prim__vertexAttribI4iv :  WebGL2RenderingContextBase
                         -> GLuint
                         -> Int32List
                         -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.vertexAttribI4ui(a b c d e f)"
  prim__vertexAttribI4ui :  WebGL2RenderingContextBase
                         -> GLuint
                         -> GLuint
                         -> GLuint
                         -> GLuint
                         -> GLuint
                         -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.vertexAttribI4uiv(a b c)"
  prim__vertexAttribI4uiv :  WebGL2RenderingContextBase
                          -> GLuint
                          -> Uint32List
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.vertexAttribIPointer(a b c d e f)"
  prim__vertexAttribIPointer :  WebGL2RenderingContextBase
                             -> GLuint
                             -> GLint
                             -> GLenum
                             -> GLsizei
                             -> GLintptr
                             -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.waitSync(a b c d)"
  prim__waitSync :  WebGL2RenderingContextBase
                 -> WebGLSync
                 -> GLbitfield
                 -> GLint64
                 -> PrimIO ()

namespace WebGL2RenderingContextOverloads
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.bufferData(a b c d)"
  prim__bufferData :  WebGL2RenderingContextOverloads
                   -> GLenum
                   -> GLsizeiptr
                   -> GLenum
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.bufferData(a b c d)"
  prim__bufferData1 :  WebGL2RenderingContextOverloads
                    -> GLenum
                    -> Nullable BufferSource
                    -> GLenum
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.bufferData(a b c d e f)"
  prim__bufferData2 :  WebGL2RenderingContextOverloads
                    -> GLenum
                    -> ArrayBufferView
                    -> GLenum
                    -> GLuint
                    -> UndefOr GLuint
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.bufferSubData(a b c d)"
  prim__bufferSubData :  WebGL2RenderingContextOverloads
                      -> GLenum
                      -> GLintptr
                      -> BufferSource
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.bufferSubData(a b c d e f)"
  prim__bufferSubData1 :  WebGL2RenderingContextOverloads
                       -> GLenum
                       -> GLintptr
                       -> ArrayBufferView
                       -> GLuint
                       -> UndefOr GLuint
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.compressedTexImage2D(a b c d e f g h i)"
  prim__compressedTexImage2D :  WebGL2RenderingContextOverloads
                             -> GLenum
                             -> GLint
                             -> GLenum
                             -> GLsizei
                             -> GLsizei
                             -> GLint
                             -> GLsizei
                             -> GLintptr
                             -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.compressedTexImage2D(a b c d e f g h i j)"
  prim__compressedTexImage2D1 :  WebGL2RenderingContextOverloads
                              -> GLenum
                              -> GLint
                              -> GLenum
                              -> GLsizei
                              -> GLsizei
                              -> GLint
                              -> ArrayBufferView
                              -> UndefOr GLuint
                              -> UndefOr GLuint
                              -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.compressedTexSubImage2D(a b c d e f g h i j)"
  prim__compressedTexSubImage2D :  WebGL2RenderingContextOverloads
                                -> GLenum
                                -> GLint
                                -> GLint
                                -> GLint
                                -> GLsizei
                                -> GLsizei
                                -> GLenum
                                -> GLsizei
                                -> GLintptr
                                -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k)=>x.compressedTexSubImage2D(a b c d e f g h i j k)"
  prim__compressedTexSubImage2D1 :  WebGL2RenderingContextOverloads
                                 -> GLenum
                                 -> GLint
                                 -> GLint
                                 -> GLint
                                 -> GLsizei
                                 -> GLsizei
                                 -> GLenum
                                 -> ArrayBufferView
                                 -> UndefOr GLuint
                                 -> UndefOr GLuint
                                 -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.readPixels(a b c d e f g h)"
  prim__readPixels :  WebGL2RenderingContextOverloads
                   -> GLint
                   -> GLint
                   -> GLsizei
                   -> GLsizei
                   -> GLenum
                   -> GLenum
                   -> Nullable ArrayBufferView
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.readPixels(a b c d e f g h)"
  prim__readPixels1 :  WebGL2RenderingContextOverloads
                    -> GLint
                    -> GLint
                    -> GLsizei
                    -> GLsizei
                    -> GLenum
                    -> GLenum
                    -> GLintptr
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.readPixels(a b c d e f g h i)"
  prim__readPixels2 :  WebGL2RenderingContextOverloads
                    -> GLint
                    -> GLint
                    -> GLsizei
                    -> GLsizei
                    -> GLenum
                    -> GLenum
                    -> ArrayBufferView
                    -> GLuint
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.texImage2D(a b c d e f g h i j)"
  prim__texImage2D :  WebGL2RenderingContextOverloads
                   -> GLenum
                   -> GLint
                   -> GLint
                   -> GLsizei
                   -> GLsizei
                   -> GLint
                   -> GLenum
                   -> GLenum
                   -> Nullable ArrayBufferView
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.texImage2D(a b c d e f g)"
  prim__texImage2D1 :  WebGL2RenderingContextOverloads
                    -> GLenum
                    -> GLint
                    -> GLint
                    -> GLenum
                    -> GLenum
                    -> TexImageSource
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.texImage2D(a b c d e f g h i j)"
  prim__texImage2D2 :  WebGL2RenderingContextOverloads
                    -> GLenum
                    -> GLint
                    -> GLint
                    -> GLsizei
                    -> GLsizei
                    -> GLint
                    -> GLenum
                    -> GLenum
                    -> GLintptr
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.texImage2D(a b c d e f g h i j)"
  prim__texImage2D3 :  WebGL2RenderingContextOverloads
                    -> GLenum
                    -> GLint
                    -> GLint
                    -> GLsizei
                    -> GLsizei
                    -> GLint
                    -> GLenum
                    -> GLenum
                    -> TexImageSource
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k)=>x.texImage2D(a b c d e f g h i j k)"
  prim__texImage2D4 :  WebGL2RenderingContextOverloads
                    -> GLenum
                    -> GLint
                    -> GLint
                    -> GLsizei
                    -> GLsizei
                    -> GLint
                    -> GLenum
                    -> GLenum
                    -> ArrayBufferView
                    -> GLuint
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.texSubImage2D(a b c d e f g h i j)"
  prim__texSubImage2D :  WebGL2RenderingContextOverloads
                      -> GLenum
                      -> GLint
                      -> GLint
                      -> GLint
                      -> GLsizei
                      -> GLsizei
                      -> GLenum
                      -> GLenum
                      -> Nullable ArrayBufferView
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.texSubImage2D(a b c d e f g h)"
  prim__texSubImage2D1 :  WebGL2RenderingContextOverloads
                       -> GLenum
                       -> GLint
                       -> GLint
                       -> GLint
                       -> GLenum
                       -> GLenum
                       -> TexImageSource
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.texSubImage2D(a b c d e f g h i j)"
  prim__texSubImage2D2 :  WebGL2RenderingContextOverloads
                       -> GLenum
                       -> GLint
                       -> GLint
                       -> GLint
                       -> GLsizei
                       -> GLsizei
                       -> GLenum
                       -> GLenum
                       -> GLintptr
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.texSubImage2D(a b c d e f g h i j)"
  prim__texSubImage2D3 :  WebGL2RenderingContextOverloads
                       -> GLenum
                       -> GLint
                       -> GLint
                       -> GLint
                       -> GLsizei
                       -> GLsizei
                       -> GLenum
                       -> GLenum
                       -> TexImageSource
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k)=>x.texSubImage2D(a b c d e f g h i j k)"
  prim__texSubImage2D4 :  WebGL2RenderingContextOverloads
                       -> GLenum
                       -> GLint
                       -> GLint
                       -> GLint
                       -> GLsizei
                       -> GLsizei
                       -> GLenum
                       -> GLenum
                       -> ArrayBufferView
                       -> GLuint
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform1fv(a b c d e)"
  prim__uniform1fv :  WebGL2RenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Float32List
                   -> UndefOr GLuint
                   -> UndefOr GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform1iv(a b c d e)"
  prim__uniform1iv :  WebGL2RenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Int32List
                   -> UndefOr GLuint
                   -> UndefOr GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform2fv(a b c d e)"
  prim__uniform2fv :  WebGL2RenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Float32List
                   -> UndefOr GLuint
                   -> UndefOr GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform2iv(a b c d e)"
  prim__uniform2iv :  WebGL2RenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Int32List
                   -> UndefOr GLuint
                   -> UndefOr GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform3fv(a b c d e)"
  prim__uniform3fv :  WebGL2RenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Float32List
                   -> UndefOr GLuint
                   -> UndefOr GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform3iv(a b c d e)"
  prim__uniform3iv :  WebGL2RenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Int32List
                   -> UndefOr GLuint
                   -> UndefOr GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform4fv(a b c d e)"
  prim__uniform4fv :  WebGL2RenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Float32List
                   -> UndefOr GLuint
                   -> UndefOr GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform4iv(a b c d e)"
  prim__uniform4iv :  WebGL2RenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Int32List
                   -> UndefOr GLuint
                   -> UndefOr GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.uniformMatrix2fv(a b c d e f)"
  prim__uniformMatrix2fv :  WebGL2RenderingContextOverloads
                         -> Nullable WebGLUniformLocation
                         -> GLboolean
                         -> Float32List
                         -> UndefOr GLuint
                         -> UndefOr GLuint
                         -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.uniformMatrix3fv(a b c d e f)"
  prim__uniformMatrix3fv :  WebGL2RenderingContextOverloads
                         -> Nullable WebGLUniformLocation
                         -> GLboolean
                         -> Float32List
                         -> UndefOr GLuint
                         -> UndefOr GLuint
                         -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.uniformMatrix4fv(a b c d e f)"
  prim__uniformMatrix4fv :  WebGL2RenderingContextOverloads
                         -> Nullable WebGLUniformLocation
                         -> GLboolean
                         -> Float32List
                         -> UndefOr GLuint
                         -> UndefOr GLuint
                         -> PrimIO ()

namespace WebGLRenderingContextBase
  
  export
  %foreign "browser:lambda:x=>x.canvas"
  prim__canvas :  WebGLRenderingContextBase
               -> PrimIO (Union2 HTMLCanvasElement OffscreenCanvas)
  
  export
  %foreign "browser:lambda:x=>x.drawingBufferHeight"
  prim__drawingBufferHeight : WebGLRenderingContextBase -> PrimIO GLsizei
  
  export
  %foreign "browser:lambda:x=>x.drawingBufferWidth"
  prim__drawingBufferWidth : WebGLRenderingContextBase -> PrimIO GLsizei
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.activeTexture(a b)"
  prim__activeTexture : WebGLRenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.attachShader(a b c)"
  prim__attachShader :  WebGLRenderingContextBase
                     -> WebGLProgram
                     -> WebGLShader
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.bindAttribLocation(a b c d)"
  prim__bindAttribLocation :  WebGLRenderingContextBase
                           -> WebGLProgram
                           -> GLuint
                           -> String
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.bindBuffer(a b c)"
  prim__bindBuffer :  WebGLRenderingContextBase
                   -> GLenum
                   -> Nullable WebGLBuffer
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.bindFramebuffer(a b c)"
  prim__bindFramebuffer :  WebGLRenderingContextBase
                        -> GLenum
                        -> Nullable WebGLFramebuffer
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.bindRenderbuffer(a b c)"
  prim__bindRenderbuffer :  WebGLRenderingContextBase
                         -> GLenum
                         -> Nullable WebGLRenderbuffer
                         -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.bindTexture(a b c)"
  prim__bindTexture :  WebGLRenderingContextBase
                    -> GLenum
                    -> Nullable WebGLTexture
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.blendColor(a b c d e)"
  prim__blendColor :  WebGLRenderingContextBase
                   -> GLclampf
                   -> GLclampf
                   -> GLclampf
                   -> GLclampf
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.blendEquationSeparate(a b c)"
  prim__blendEquationSeparate :  WebGLRenderingContextBase
                              -> GLenum
                              -> GLenum
                              -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.blendEquation(a b)"
  prim__blendEquation : WebGLRenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.blendFuncSeparate(a b c d e)"
  prim__blendFuncSeparate :  WebGLRenderingContextBase
                          -> GLenum
                          -> GLenum
                          -> GLenum
                          -> GLenum
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.blendFunc(a b c)"
  prim__blendFunc : WebGLRenderingContextBase -> GLenum -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.checkFramebufferStatus(a b)"
  prim__checkFramebufferStatus :  WebGLRenderingContextBase
                               -> GLenum
                               -> PrimIO GLenum
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.clearColor(a b c d e)"
  prim__clearColor :  WebGLRenderingContextBase
                   -> GLclampf
                   -> GLclampf
                   -> GLclampf
                   -> GLclampf
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.clearDepth(a b)"
  prim__clearDepth : WebGLRenderingContextBase -> GLclampf -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.clearStencil(a b)"
  prim__clearStencil : WebGLRenderingContextBase -> GLint -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.clear(a b)"
  prim__clear : WebGLRenderingContextBase -> GLbitfield -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.colorMask(a b c d e)"
  prim__colorMask :  WebGLRenderingContextBase
                  -> GLboolean
                  -> GLboolean
                  -> GLboolean
                  -> GLboolean
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.compileShader(a b)"
  prim__compileShader : WebGLRenderingContextBase -> WebGLShader -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.copyTexImage2D(a b c d e f g h i)"
  prim__copyTexImage2D :  WebGLRenderingContextBase
                       -> GLenum
                       -> GLint
                       -> GLenum
                       -> GLint
                       -> GLint
                       -> GLsizei
                       -> GLsizei
                       -> GLint
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.copyTexSubImage2D(a b c d e f g h i)"
  prim__copyTexSubImage2D :  WebGLRenderingContextBase
                          -> GLenum
                          -> GLint
                          -> GLint
                          -> GLint
                          -> GLint
                          -> GLint
                          -> GLsizei
                          -> GLsizei
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.createBuffer(a)"
  prim__createBuffer :  WebGLRenderingContextBase
                     -> PrimIO (Nullable WebGLBuffer)
  
  export
  %foreign "browser:lambda:(x,a)=>x.createFramebuffer(a)"
  prim__createFramebuffer :  WebGLRenderingContextBase
                          -> PrimIO (Nullable WebGLFramebuffer)
  
  export
  %foreign "browser:lambda:(x,a)=>x.createProgram(a)"
  prim__createProgram :  WebGLRenderingContextBase
                      -> PrimIO (Nullable WebGLProgram)
  
  export
  %foreign "browser:lambda:(x,a)=>x.createRenderbuffer(a)"
  prim__createRenderbuffer :  WebGLRenderingContextBase
                           -> PrimIO (Nullable WebGLRenderbuffer)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.createShader(a b)"
  prim__createShader :  WebGLRenderingContextBase
                     -> GLenum
                     -> PrimIO (Nullable WebGLShader)
  
  export
  %foreign "browser:lambda:(x,a)=>x.createTexture(a)"
  prim__createTexture :  WebGLRenderingContextBase
                      -> PrimIO (Nullable WebGLTexture)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.cullFace(a b)"
  prim__cullFace : WebGLRenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.deleteBuffer(a b)"
  prim__deleteBuffer :  WebGLRenderingContextBase
                     -> Nullable WebGLBuffer
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.deleteFramebuffer(a b)"
  prim__deleteFramebuffer :  WebGLRenderingContextBase
                          -> Nullable WebGLFramebuffer
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.deleteProgram(a b)"
  prim__deleteProgram :  WebGLRenderingContextBase
                      -> Nullable WebGLProgram
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.deleteRenderbuffer(a b)"
  prim__deleteRenderbuffer :  WebGLRenderingContextBase
                           -> Nullable WebGLRenderbuffer
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.deleteShader(a b)"
  prim__deleteShader :  WebGLRenderingContextBase
                     -> Nullable WebGLShader
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.deleteTexture(a b)"
  prim__deleteTexture :  WebGLRenderingContextBase
                      -> Nullable WebGLTexture
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.depthFunc(a b)"
  prim__depthFunc : WebGLRenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.depthMask(a b)"
  prim__depthMask : WebGLRenderingContextBase -> GLboolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.depthRange(a b c)"
  prim__depthRange :  WebGLRenderingContextBase
                   -> GLclampf
                   -> GLclampf
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.detachShader(a b c)"
  prim__detachShader :  WebGLRenderingContextBase
                     -> WebGLProgram
                     -> WebGLShader
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.disableVertexAttribArray(a b)"
  prim__disableVertexAttribArray :  WebGLRenderingContextBase
                                 -> GLuint
                                 -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.disable(a b)"
  prim__disable : WebGLRenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.drawArrays(a b c d)"
  prim__drawArrays :  WebGLRenderingContextBase
                   -> GLenum
                   -> GLint
                   -> GLsizei
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.drawElements(a b c d e)"
  prim__drawElements :  WebGLRenderingContextBase
                     -> GLenum
                     -> GLsizei
                     -> GLenum
                     -> GLintptr
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.enableVertexAttribArray(a b)"
  prim__enableVertexAttribArray :  WebGLRenderingContextBase
                                -> GLuint
                                -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.enable(a b)"
  prim__enable : WebGLRenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.finish(a)"
  prim__finish : WebGLRenderingContextBase -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.flush(a)"
  prim__flush : WebGLRenderingContextBase -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.framebufferRenderbuffer(a b c d e)"
  prim__framebufferRenderbuffer :  WebGLRenderingContextBase
                                -> GLenum
                                -> GLenum
                                -> GLenum
                                -> Nullable WebGLRenderbuffer
                                -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.framebufferTexture2D(a b c d e f)"
  prim__framebufferTexture2D :  WebGLRenderingContextBase
                             -> GLenum
                             -> GLenum
                             -> GLenum
                             -> Nullable WebGLTexture
                             -> GLint
                             -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.frontFace(a b)"
  prim__frontFace : WebGLRenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.generateMipmap(a b)"
  prim__generateMipmap : WebGLRenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getActiveAttrib(a b c)"
  prim__getActiveAttrib :  WebGLRenderingContextBase
                        -> WebGLProgram
                        -> GLuint
                        -> PrimIO (Nullable WebGLActiveInfo)
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getActiveUniform(a b c)"
  prim__getActiveUniform :  WebGLRenderingContextBase
                         -> WebGLProgram
                         -> GLuint
                         -> PrimIO (Nullable WebGLActiveInfo)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getAttachedShaders(a b)"
  prim__getAttachedShaders :  WebGLRenderingContextBase
                           -> WebGLProgram
                           -> PrimIO (Nullable (Array WebGLShader))
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getAttribLocation(a b c)"
  prim__getAttribLocation :  WebGLRenderingContextBase
                          -> WebGLProgram
                          -> String
                          -> PrimIO GLint
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getBufferParameter(a b c)"
  prim__getBufferParameter :  WebGLRenderingContextBase
                           -> GLenum
                           -> GLenum
                           -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a)=>x.getContextAttributes(a)"
  prim__getContextAttributes :  WebGLRenderingContextBase
                             -> PrimIO (Nullable WebGLContextAttributes)
  
  export
  %foreign "browser:lambda:(x,a)=>x.getError(a)"
  prim__getError : WebGLRenderingContextBase -> PrimIO GLenum
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getExtension(a b)"
  prim__getExtension :  WebGLRenderingContextBase
                     -> String
                     -> PrimIO (Nullable Object)
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.getFramebufferAttachmentParameter(a b c d)"
  prim__getFramebufferAttachmentParameter :  WebGLRenderingContextBase
                                          -> GLenum
                                          -> GLenum
                                          -> GLenum
                                          -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getParameter(a b)"
  prim__getParameter : WebGLRenderingContextBase -> GLenum -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getProgramInfoLog(a b)"
  prim__getProgramInfoLog :  WebGLRenderingContextBase
                          -> WebGLProgram
                          -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getProgramParameter(a b c)"
  prim__getProgramParameter :  WebGLRenderingContextBase
                            -> WebGLProgram
                            -> GLenum
                            -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getRenderbufferParameter(a b c)"
  prim__getRenderbufferParameter :  WebGLRenderingContextBase
                                 -> GLenum
                                 -> GLenum
                                 -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getShaderInfoLog(a b)"
  prim__getShaderInfoLog :  WebGLRenderingContextBase
                         -> WebGLShader
                         -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getShaderParameter(a b c)"
  prim__getShaderParameter :  WebGLRenderingContextBase
                           -> WebGLShader
                           -> GLenum
                           -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getShaderPrecisionFormat(a b c)"
  prim__getShaderPrecisionFormat :  WebGLRenderingContextBase
                                 -> GLenum
                                 -> GLenum
                                 -> PrimIO (Nullable WebGLShaderPrecisionFormat)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getShaderSource(a b)"
  prim__getShaderSource :  WebGLRenderingContextBase
                        -> WebGLShader
                        -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:(x,a)=>x.getSupportedExtensions(a)"
  prim__getSupportedExtensions :  WebGLRenderingContextBase
                               -> PrimIO (Nullable (Array String))
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getTexParameter(a b c)"
  prim__getTexParameter :  WebGLRenderingContextBase
                        -> GLenum
                        -> GLenum
                        -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getUniformLocation(a b c)"
  prim__getUniformLocation :  WebGLRenderingContextBase
                           -> WebGLProgram
                           -> String
                           -> PrimIO (Nullable WebGLUniformLocation)
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getUniform(a b c)"
  prim__getUniform :  WebGLRenderingContextBase
                   -> WebGLProgram
                   -> WebGLUniformLocation
                   -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getVertexAttribOffset(a b c)"
  prim__getVertexAttribOffset :  WebGLRenderingContextBase
                              -> GLuint
                              -> GLenum
                              -> PrimIO GLintptr
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getVertexAttrib(a b c)"
  prim__getVertexAttrib :  WebGLRenderingContextBase
                        -> GLuint
                        -> GLenum
                        -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.hint(a b c)"
  prim__hint : WebGLRenderingContextBase -> GLenum -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.isBuffer(a b)"
  prim__isBuffer :  WebGLRenderingContextBase
                 -> Nullable WebGLBuffer
                 -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a)=>x.isContextLost(a)"
  prim__isContextLost : WebGLRenderingContextBase -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.isEnabled(a b)"
  prim__isEnabled : WebGLRenderingContextBase -> GLenum -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.isFramebuffer(a b)"
  prim__isFramebuffer :  WebGLRenderingContextBase
                      -> Nullable WebGLFramebuffer
                      -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.isProgram(a b)"
  prim__isProgram :  WebGLRenderingContextBase
                  -> Nullable WebGLProgram
                  -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.isRenderbuffer(a b)"
  prim__isRenderbuffer :  WebGLRenderingContextBase
                       -> Nullable WebGLRenderbuffer
                       -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.isShader(a b)"
  prim__isShader :  WebGLRenderingContextBase
                 -> Nullable WebGLShader
                 -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.isTexture(a b)"
  prim__isTexture :  WebGLRenderingContextBase
                  -> Nullable WebGLTexture
                  -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.lineWidth(a b)"
  prim__lineWidth : WebGLRenderingContextBase -> GLfloat -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.linkProgram(a b)"
  prim__linkProgram : WebGLRenderingContextBase -> WebGLProgram -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.pixelStorei(a b c)"
  prim__pixelStorei : WebGLRenderingContextBase -> GLenum -> GLint -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.polygonOffset(a b c)"
  prim__polygonOffset :  WebGLRenderingContextBase
                      -> GLfloat
                      -> GLfloat
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.renderbufferStorage(a b c d e)"
  prim__renderbufferStorage :  WebGLRenderingContextBase
                            -> GLenum
                            -> GLenum
                            -> GLsizei
                            -> GLsizei
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.sampleCoverage(a b c)"
  prim__sampleCoverage :  WebGLRenderingContextBase
                       -> GLclampf
                       -> GLboolean
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.scissor(a b c d e)"
  prim__scissor :  WebGLRenderingContextBase
                -> GLint
                -> GLint
                -> GLsizei
                -> GLsizei
                -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.shaderSource(a b c)"
  prim__shaderSource :  WebGLRenderingContextBase
                     -> WebGLShader
                     -> String
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.stencilFuncSeparate(a b c d e)"
  prim__stencilFuncSeparate :  WebGLRenderingContextBase
                            -> GLenum
                            -> GLenum
                            -> GLint
                            -> GLuint
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.stencilFunc(a b c d)"
  prim__stencilFunc :  WebGLRenderingContextBase
                    -> GLenum
                    -> GLint
                    -> GLuint
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.stencilMaskSeparate(a b c)"
  prim__stencilMaskSeparate :  WebGLRenderingContextBase
                            -> GLenum
                            -> GLuint
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.stencilMask(a b)"
  prim__stencilMask : WebGLRenderingContextBase -> GLuint -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.stencilOpSeparate(a b c d e)"
  prim__stencilOpSeparate :  WebGLRenderingContextBase
                          -> GLenum
                          -> GLenum
                          -> GLenum
                          -> GLenum
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.stencilOp(a b c d)"
  prim__stencilOp :  WebGLRenderingContextBase
                  -> GLenum
                  -> GLenum
                  -> GLenum
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.texParameterf(a b c d)"
  prim__texParameterf :  WebGLRenderingContextBase
                      -> GLenum
                      -> GLenum
                      -> GLfloat
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.texParameteri(a b c d)"
  prim__texParameteri :  WebGLRenderingContextBase
                      -> GLenum
                      -> GLenum
                      -> GLint
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.uniform1f(a b c)"
  prim__uniform1f :  WebGLRenderingContextBase
                  -> Nullable WebGLUniformLocation
                  -> GLfloat
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.uniform1i(a b c)"
  prim__uniform1i :  WebGLRenderingContextBase
                  -> Nullable WebGLUniformLocation
                  -> GLint
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniform2f(a b c d)"
  prim__uniform2f :  WebGLRenderingContextBase
                  -> Nullable WebGLUniformLocation
                  -> GLfloat
                  -> GLfloat
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniform2i(a b c d)"
  prim__uniform2i :  WebGLRenderingContextBase
                  -> Nullable WebGLUniformLocation
                  -> GLint
                  -> GLint
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform3f(a b c d e)"
  prim__uniform3f :  WebGLRenderingContextBase
                  -> Nullable WebGLUniformLocation
                  -> GLfloat
                  -> GLfloat
                  -> GLfloat
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform3i(a b c d e)"
  prim__uniform3i :  WebGLRenderingContextBase
                  -> Nullable WebGLUniformLocation
                  -> GLint
                  -> GLint
                  -> GLint
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.uniform4f(a b c d e f)"
  prim__uniform4f :  WebGLRenderingContextBase
                  -> Nullable WebGLUniformLocation
                  -> GLfloat
                  -> GLfloat
                  -> GLfloat
                  -> GLfloat
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.uniform4i(a b c d e f)"
  prim__uniform4i :  WebGLRenderingContextBase
                  -> Nullable WebGLUniformLocation
                  -> GLint
                  -> GLint
                  -> GLint
                  -> GLint
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.useProgram(a b)"
  prim__useProgram :  WebGLRenderingContextBase
                   -> Nullable WebGLProgram
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.validateProgram(a b)"
  prim__validateProgram : WebGLRenderingContextBase -> WebGLProgram -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.vertexAttrib1f(a b c)"
  prim__vertexAttrib1f :  WebGLRenderingContextBase
                       -> GLuint
                       -> GLfloat
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.vertexAttrib1fv(a b c)"
  prim__vertexAttrib1fv :  WebGLRenderingContextBase
                        -> GLuint
                        -> Float32List
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.vertexAttrib2f(a b c d)"
  prim__vertexAttrib2f :  WebGLRenderingContextBase
                       -> GLuint
                       -> GLfloat
                       -> GLfloat
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.vertexAttrib2fv(a b c)"
  prim__vertexAttrib2fv :  WebGLRenderingContextBase
                        -> GLuint
                        -> Float32List
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.vertexAttrib3f(a b c d e)"
  prim__vertexAttrib3f :  WebGLRenderingContextBase
                       -> GLuint
                       -> GLfloat
                       -> GLfloat
                       -> GLfloat
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.vertexAttrib3fv(a b c)"
  prim__vertexAttrib3fv :  WebGLRenderingContextBase
                        -> GLuint
                        -> Float32List
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.vertexAttrib4f(a b c d e f)"
  prim__vertexAttrib4f :  WebGLRenderingContextBase
                       -> GLuint
                       -> GLfloat
                       -> GLfloat
                       -> GLfloat
                       -> GLfloat
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.vertexAttrib4fv(a b c)"
  prim__vertexAttrib4fv :  WebGLRenderingContextBase
                        -> GLuint
                        -> Float32List
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.vertexAttribPointer(a b c d e f g)"
  prim__vertexAttribPointer :  WebGLRenderingContextBase
                            -> GLuint
                            -> GLint
                            -> GLenum
                            -> GLboolean
                            -> GLsizei
                            -> GLintptr
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.viewport(a b c d e)"
  prim__viewport :  WebGLRenderingContextBase
                 -> GLint
                 -> GLint
                 -> GLsizei
                 -> GLsizei
                 -> PrimIO ()

namespace WebGLRenderingContextOverloads
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.bufferData(a b c d)"
  prim__bufferData :  WebGLRenderingContextOverloads
                   -> GLenum
                   -> GLsizeiptr
                   -> GLenum
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.bufferData(a b c d)"
  prim__bufferData1 :  WebGLRenderingContextOverloads
                    -> GLenum
                    -> Nullable BufferSource
                    -> GLenum
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.bufferSubData(a b c d)"
  prim__bufferSubData :  WebGLRenderingContextOverloads
                      -> GLenum
                      -> GLintptr
                      -> BufferSource
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.compressedTexImage2D(a b c d e f g h)"
  prim__compressedTexImage2D :  WebGLRenderingContextOverloads
                             -> GLenum
                             -> GLint
                             -> GLenum
                             -> GLsizei
                             -> GLsizei
                             -> GLint
                             -> ArrayBufferView
                             -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.compressedTexSubImage2D(a b c d e f g h i)"
  prim__compressedTexSubImage2D :  WebGLRenderingContextOverloads
                                -> GLenum
                                -> GLint
                                -> GLint
                                -> GLint
                                -> GLsizei
                                -> GLsizei
                                -> GLenum
                                -> ArrayBufferView
                                -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.readPixels(a b c d e f g h)"
  prim__readPixels :  WebGLRenderingContextOverloads
                   -> GLint
                   -> GLint
                   -> GLsizei
                   -> GLsizei
                   -> GLenum
                   -> GLenum
                   -> Nullable ArrayBufferView
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.texImage2D(a b c d e f g h i j)"
  prim__texImage2D :  WebGLRenderingContextOverloads
                   -> GLenum
                   -> GLint
                   -> GLint
                   -> GLsizei
                   -> GLsizei
                   -> GLint
                   -> GLenum
                   -> GLenum
                   -> Nullable ArrayBufferView
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.texImage2D(a b c d e f g)"
  prim__texImage2D1 :  WebGLRenderingContextOverloads
                    -> GLenum
                    -> GLint
                    -> GLint
                    -> GLenum
                    -> GLenum
                    -> TexImageSource
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.texSubImage2D(a b c d e f g h i j)"
  prim__texSubImage2D :  WebGLRenderingContextOverloads
                      -> GLenum
                      -> GLint
                      -> GLint
                      -> GLint
                      -> GLsizei
                      -> GLsizei
                      -> GLenum
                      -> GLenum
                      -> Nullable ArrayBufferView
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.texSubImage2D(a b c d e f g h)"
  prim__texSubImage2D1 :  WebGLRenderingContextOverloads
                       -> GLenum
                       -> GLint
                       -> GLint
                       -> GLint
                       -> GLenum
                       -> GLenum
                       -> TexImageSource
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.uniform1fv(a b c)"
  prim__uniform1fv :  WebGLRenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Float32List
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.uniform1iv(a b c)"
  prim__uniform1iv :  WebGLRenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Int32List
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.uniform2fv(a b c)"
  prim__uniform2fv :  WebGLRenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Float32List
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.uniform2iv(a b c)"
  prim__uniform2iv :  WebGLRenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Int32List
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.uniform3fv(a b c)"
  prim__uniform3fv :  WebGLRenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Float32List
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.uniform3iv(a b c)"
  prim__uniform3iv :  WebGLRenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Int32List
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.uniform4fv(a b c)"
  prim__uniform4fv :  WebGLRenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Float32List
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.uniform4iv(a b c)"
  prim__uniform4iv :  WebGLRenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Int32List
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniformMatrix2fv(a b c d)"
  prim__uniformMatrix2fv :  WebGLRenderingContextOverloads
                         -> Nullable WebGLUniformLocation
                         -> GLboolean
                         -> Float32List
                         -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniformMatrix3fv(a b c d)"
  prim__uniformMatrix3fv :  WebGLRenderingContextOverloads
                         -> Nullable WebGLUniformLocation
                         -> GLboolean
                         -> Float32List
                         -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniformMatrix4fv(a b c d)"
  prim__uniformMatrix4fv :  WebGLRenderingContextOverloads
                         -> Nullable WebGLUniformLocation
                         -> GLboolean
                         -> Float32List
                         -> PrimIO ()

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace WebGLContextAttributes
  
  export
  %foreign "browser:lambda:(a,b,c,d,e,f,g,h,i)=> {alpha: a,depth: b,stencil: c,antialias: d,premultipliedAlpha: e,preserveDrawingBuffer: f,powerPreference: g,failIfMajorPerformanceCaveat: h,desynchronized: i}"
  prim__new :  UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> UndefOr WebGLPowerPreference
            -> UndefOr Boolean
            -> UndefOr Boolean
            -> PrimIO WebGLContextAttributes
  
  export
  %foreign "browser:lambda:x=>x.alpha"
  prim__alpha : WebGLContextAttributes -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.alpha = v}"
  prim__setAlpha : WebGLContextAttributes -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.antialias"
  prim__antialias : WebGLContextAttributes -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.antialias = v}"
  prim__setAntialias : WebGLContextAttributes -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.depth"
  prim__depth : WebGLContextAttributes -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.depth = v}"
  prim__setDepth : WebGLContextAttributes -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.desynchronized"
  prim__desynchronized : WebGLContextAttributes -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.desynchronized = v}"
  prim__setDesynchronized :  WebGLContextAttributes
                          -> UndefOr Boolean
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.failIfMajorPerformanceCaveat"
  prim__failIfMajorPerformanceCaveat :  WebGLContextAttributes
                                     -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.failIfMajorPerformanceCaveat = v}"
  prim__setFailIfMajorPerformanceCaveat :  WebGLContextAttributes
                                        -> UndefOr Boolean
                                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.powerPreference"
  prim__powerPreference :  WebGLContextAttributes
                        -> PrimIO (UndefOr WebGLPowerPreference)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.powerPreference = v}"
  prim__setPowerPreference :  WebGLContextAttributes
                           -> UndefOr WebGLPowerPreference
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.premultipliedAlpha"
  prim__premultipliedAlpha : WebGLContextAttributes -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.premultipliedAlpha = v}"
  prim__setPremultipliedAlpha :  WebGLContextAttributes
                              -> UndefOr Boolean
                              -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.preserveDrawingBuffer"
  prim__preserveDrawingBuffer :  WebGLContextAttributes
                              -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.preserveDrawingBuffer = v}"
  prim__setPreserveDrawingBuffer :  WebGLContextAttributes
                                 -> UndefOr Boolean
                                 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.stencil"
  prim__stencil : WebGLContextAttributes -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.stencil = v}"
  prim__setStencil : WebGLContextAttributes -> UndefOr Boolean -> PrimIO ()