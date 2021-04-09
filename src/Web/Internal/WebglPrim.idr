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
  %foreign "browser:lambda:(x,a,b)=>x.beginQuery(a b)"
  prim__beginQuery :  WebGL2RenderingContextBase
                   -> GLenum
                   -> WebGLQuery
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.beginTransformFeedback(a)"
  prim__beginTransformFeedback :  WebGL2RenderingContextBase
                               -> GLenum
                               -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.bindBufferBase(a b c)"
  prim__bindBufferBase :  WebGL2RenderingContextBase
                       -> GLenum
                       -> GLuint
                       -> Nullable WebGLBuffer
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.bindBufferRange(a b c d e)"
  prim__bindBufferRange :  WebGL2RenderingContextBase
                        -> GLenum
                        -> GLuint
                        -> Nullable WebGLBuffer
                        -> GLintptr
                        -> GLsizeiptr
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.bindSampler(a b)"
  prim__bindSampler :  WebGL2RenderingContextBase
                    -> GLuint
                    -> Nullable WebGLSampler
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.bindTransformFeedback(a b)"
  prim__bindTransformFeedback :  WebGL2RenderingContextBase
                              -> GLenum
                              -> Nullable WebGLTransformFeedback
                              -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.bindVertexArray(a)"
  prim__bindVertexArray :  WebGL2RenderingContextBase
                        -> Nullable WebGLVertexArrayObject
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.blitFramebuffer(a b c d e f g h i j)"
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
  %foreign "browser:lambda:(x,a,b,c,d)=>x.clearBufferfi(a b c d)"
  prim__clearBufferfi :  WebGL2RenderingContextBase
                      -> GLenum
                      -> GLint
                      -> GLfloat
                      -> GLint
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.clearBufferfv(a b c d)"
  prim__clearBufferfv :  WebGL2RenderingContextBase
                      -> GLenum
                      -> GLint
                      -> Float32List
                      -> UndefOr GLuint
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.clearBufferiv(a b c d)"
  prim__clearBufferiv :  WebGL2RenderingContextBase
                      -> GLenum
                      -> GLint
                      -> Int32List
                      -> UndefOr GLuint
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.clearBufferuiv(a b c d)"
  prim__clearBufferuiv :  WebGL2RenderingContextBase
                       -> GLenum
                       -> GLint
                       -> Uint32List
                       -> UndefOr GLuint
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.clientWaitSync(a b c)"
  prim__clientWaitSync :  WebGL2RenderingContextBase
                       -> WebGLSync
                       -> GLbitfield
                       -> GLuint64
                       -> PrimIO GLenum
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.compressedTexImage3D(a b c d e f g h i)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.compressedTexImage3D(a b c d e f g h i j)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k)=>x.compressedTexSubImage3D(a b c d e f g h i j k)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k,l)=>x.compressedTexSubImage3D(a b c d e f g h i j k l)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.copyBufferSubData(a b c d e)"
  prim__copyBufferSubData :  WebGL2RenderingContextBase
                          -> GLenum
                          -> GLenum
                          -> GLintptr
                          -> GLintptr
                          -> GLsizeiptr
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.copyTexSubImage3D(a b c d e f g h i)"
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
  %foreign "browser:lambda:x=>x.createQuery()"
  prim__createQuery : WebGL2RenderingContextBase -> PrimIO (Nullable WebGLQuery)
  
  export
  %foreign "browser:lambda:x=>x.createSampler()"
  prim__createSampler :  WebGL2RenderingContextBase
                      -> PrimIO (Nullable WebGLSampler)
  
  export
  %foreign "browser:lambda:x=>x.createTransformFeedback()"
  prim__createTransformFeedback :  WebGL2RenderingContextBase
                                -> PrimIO (Nullable WebGLTransformFeedback)
  
  export
  %foreign "browser:lambda:x=>x.createVertexArray()"
  prim__createVertexArray :  WebGL2RenderingContextBase
                          -> PrimIO (Nullable WebGLVertexArrayObject)
  
  export
  %foreign "browser:lambda:(x,a)=>x.deleteQuery(a)"
  prim__deleteQuery :  WebGL2RenderingContextBase
                    -> Nullable WebGLQuery
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.deleteSampler(a)"
  prim__deleteSampler :  WebGL2RenderingContextBase
                      -> Nullable WebGLSampler
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.deleteSync(a)"
  prim__deleteSync :  WebGL2RenderingContextBase
                   -> Nullable WebGLSync
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.deleteTransformFeedback(a)"
  prim__deleteTransformFeedback :  WebGL2RenderingContextBase
                                -> Nullable WebGLTransformFeedback
                                -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.deleteVertexArray(a)"
  prim__deleteVertexArray :  WebGL2RenderingContextBase
                          -> Nullable WebGLVertexArrayObject
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.drawArraysInstanced(a b c d)"
  prim__drawArraysInstanced :  WebGL2RenderingContextBase
                            -> GLenum
                            -> GLint
                            -> GLsizei
                            -> GLsizei
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.drawBuffers(a)"
  prim__drawBuffers : WebGL2RenderingContextBase -> Array GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.drawElementsInstanced(a b c d e)"
  prim__drawElementsInstanced :  WebGL2RenderingContextBase
                              -> GLenum
                              -> GLsizei
                              -> GLenum
                              -> GLintptr
                              -> GLsizei
                              -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.drawRangeElements(a b c d e f)"
  prim__drawRangeElements :  WebGL2RenderingContextBase
                          -> GLenum
                          -> GLuint
                          -> GLuint
                          -> GLsizei
                          -> GLenum
                          -> GLintptr
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.endQuery(a)"
  prim__endQuery : WebGL2RenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.endTransformFeedback()"
  prim__endTransformFeedback : WebGL2RenderingContextBase -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.fenceSync(a b)"
  prim__fenceSync :  WebGL2RenderingContextBase
                  -> GLenum
                  -> GLbitfield
                  -> PrimIO (Nullable WebGLSync)
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.framebufferTextureLayer(a b c d e)"
  prim__framebufferTextureLayer :  WebGL2RenderingContextBase
                                -> GLenum
                                -> GLenum
                                -> Nullable WebGLTexture
                                -> GLint
                                -> GLint
                                -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getActiveUniformBlockName(a b)"
  prim__getActiveUniformBlockName :  WebGL2RenderingContextBase
                                  -> WebGLProgram
                                  -> GLuint
                                  -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getActiveUniformBlockParameter(a b c)"
  prim__getActiveUniformBlockParameter :  WebGL2RenderingContextBase
                                       -> WebGLProgram
                                       -> GLuint
                                       -> GLenum
                                       -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getActiveUniforms(a b c)"
  prim__getActiveUniforms :  WebGL2RenderingContextBase
                          -> WebGLProgram
                          -> Array GLuint
                          -> GLenum
                          -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.getBufferSubData(a b c d e)"
  prim__getBufferSubData :  WebGL2RenderingContextBase
                         -> GLenum
                         -> GLintptr
                         -> ArrayBufferView
                         -> UndefOr GLuint
                         -> UndefOr GLuint
                         -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getFragDataLocation(a b)"
  prim__getFragDataLocation :  WebGL2RenderingContextBase
                            -> WebGLProgram
                            -> String
                            -> PrimIO GLint
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getIndexedParameter(a b)"
  prim__getIndexedParameter :  WebGL2RenderingContextBase
                            -> GLenum
                            -> GLuint
                            -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getInternalformatParameter(a b c)"
  prim__getInternalformatParameter :  WebGL2RenderingContextBase
                                   -> GLenum
                                   -> GLenum
                                   -> GLenum
                                   -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getQueryParameter(a b)"
  prim__getQueryParameter :  WebGL2RenderingContextBase
                          -> WebGLQuery
                          -> GLenum
                          -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getQuery(a b)"
  prim__getQuery :  WebGL2RenderingContextBase
                 -> GLenum
                 -> GLenum
                 -> PrimIO (Nullable WebGLQuery)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getSamplerParameter(a b)"
  prim__getSamplerParameter :  WebGL2RenderingContextBase
                            -> WebGLSampler
                            -> GLenum
                            -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getSyncParameter(a b)"
  prim__getSyncParameter :  WebGL2RenderingContextBase
                         -> WebGLSync
                         -> GLenum
                         -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getTransformFeedbackVarying(a b)"
  prim__getTransformFeedbackVarying :  WebGL2RenderingContextBase
                                    -> WebGLProgram
                                    -> GLuint
                                    -> PrimIO (Nullable WebGLActiveInfo)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getUniformBlockIndex(a b)"
  prim__getUniformBlockIndex :  WebGL2RenderingContextBase
                             -> WebGLProgram
                             -> String
                             -> PrimIO GLuint
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getUniformIndices(a b)"
  prim__getUniformIndices :  WebGL2RenderingContextBase
                          -> WebGLProgram
                          -> Array String
                          -> PrimIO (Nullable (Array GLuint))
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.invalidateFramebuffer(a b)"
  prim__invalidateFramebuffer :  WebGL2RenderingContextBase
                              -> GLenum
                              -> Array GLenum
                              -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.invalidateSubFramebuffer(a b c d e f)"
  prim__invalidateSubFramebuffer :  WebGL2RenderingContextBase
                                 -> GLenum
                                 -> Array GLenum
                                 -> GLint
                                 -> GLint
                                 -> GLsizei
                                 -> GLsizei
                                 -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.isQuery(a)"
  prim__isQuery :  WebGL2RenderingContextBase
                -> Nullable WebGLQuery
                -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a)=>x.isSampler(a)"
  prim__isSampler :  WebGL2RenderingContextBase
                  -> Nullable WebGLSampler
                  -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a)=>x.isSync(a)"
  prim__isSync :  WebGL2RenderingContextBase
               -> Nullable WebGLSync
               -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a)=>x.isTransformFeedback(a)"
  prim__isTransformFeedback :  WebGL2RenderingContextBase
                            -> Nullable WebGLTransformFeedback
                            -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a)=>x.isVertexArray(a)"
  prim__isVertexArray :  WebGL2RenderingContextBase
                      -> Nullable WebGLVertexArrayObject
                      -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:x=>x.pauseTransformFeedback()"
  prim__pauseTransformFeedback : WebGL2RenderingContextBase -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.readBuffer(a)"
  prim__readBuffer : WebGL2RenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.renderbufferStorageMultisample(a b c d e)"
  prim__renderbufferStorageMultisample :  WebGL2RenderingContextBase
                                       -> GLenum
                                       -> GLsizei
                                       -> GLenum
                                       -> GLsizei
                                       -> GLsizei
                                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.resumeTransformFeedback()"
  prim__resumeTransformFeedback : WebGL2RenderingContextBase -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.samplerParameterf(a b c)"
  prim__samplerParameterf :  WebGL2RenderingContextBase
                          -> WebGLSampler
                          -> GLenum
                          -> GLfloat
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.samplerParameteri(a b c)"
  prim__samplerParameteri :  WebGL2RenderingContextBase
                          -> WebGLSampler
                          -> GLenum
                          -> GLint
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.texImage3D(a b c d e f g h i j)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.texImage3D(a b c d e f g h i j)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.texImage3D(a b c d e f g h i j)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k)=>x.texImage3D(a b c d e f g h i j k)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.texStorage2D(a b c d e)"
  prim__texStorage2D :  WebGL2RenderingContextBase
                     -> GLenum
                     -> GLsizei
                     -> GLenum
                     -> GLsizei
                     -> GLsizei
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.texStorage3D(a b c d e f)"
  prim__texStorage3D :  WebGL2RenderingContextBase
                     -> GLenum
                     -> GLsizei
                     -> GLenum
                     -> GLsizei
                     -> GLsizei
                     -> GLsizei
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k)=>x.texSubImage3D(a b c d e f g h i j k)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k)=>x.texSubImage3D(a b c d e f g h i j k)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j,k,l)=>x.texSubImage3D(a b c d e f g h i j k l)"
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
  %foreign "browser:lambda:(x,a,b,c)=>x.transformFeedbackVaryings(a b c)"
  prim__transformFeedbackVaryings :  WebGL2RenderingContextBase
                                  -> WebGLProgram
                                  -> Array String
                                  -> GLenum
                                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.uniform1ui(a b)"
  prim__uniform1ui :  WebGL2RenderingContextBase
                   -> Nullable WebGLUniformLocation
                   -> GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniform1uiv(a b c d)"
  prim__uniform1uiv :  WebGL2RenderingContextBase
                    -> Nullable WebGLUniformLocation
                    -> Uint32List
                    -> UndefOr GLuint
                    -> UndefOr GLuint
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.uniform2ui(a b c)"
  prim__uniform2ui :  WebGL2RenderingContextBase
                   -> Nullable WebGLUniformLocation
                   -> GLuint
                   -> GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniform2uiv(a b c d)"
  prim__uniform2uiv :  WebGL2RenderingContextBase
                    -> Nullable WebGLUniformLocation
                    -> Uint32List
                    -> UndefOr GLuint
                    -> UndefOr GLuint
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniform3ui(a b c d)"
  prim__uniform3ui :  WebGL2RenderingContextBase
                   -> Nullable WebGLUniformLocation
                   -> GLuint
                   -> GLuint
                   -> GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniform3uiv(a b c d)"
  prim__uniform3uiv :  WebGL2RenderingContextBase
                    -> Nullable WebGLUniformLocation
                    -> Uint32List
                    -> UndefOr GLuint
                    -> UndefOr GLuint
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform4ui(a b c d e)"
  prim__uniform4ui :  WebGL2RenderingContextBase
                   -> Nullable WebGLUniformLocation
                   -> GLuint
                   -> GLuint
                   -> GLuint
                   -> GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniform4uiv(a b c d)"
  prim__uniform4uiv :  WebGL2RenderingContextBase
                    -> Nullable WebGLUniformLocation
                    -> Uint32List
                    -> UndefOr GLuint
                    -> UndefOr GLuint
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.uniformBlockBinding(a b c)"
  prim__uniformBlockBinding :  WebGL2RenderingContextBase
                            -> WebGLProgram
                            -> GLuint
                            -> GLuint
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniformMatrix2x3fv(a b c d e)"
  prim__uniformMatrix2x3fv :  WebGL2RenderingContextBase
                           -> Nullable WebGLUniformLocation
                           -> GLboolean
                           -> Float32List
                           -> UndefOr GLuint
                           -> UndefOr GLuint
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniformMatrix2x4fv(a b c d e)"
  prim__uniformMatrix2x4fv :  WebGL2RenderingContextBase
                           -> Nullable WebGLUniformLocation
                           -> GLboolean
                           -> Float32List
                           -> UndefOr GLuint
                           -> UndefOr GLuint
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniformMatrix3x2fv(a b c d e)"
  prim__uniformMatrix3x2fv :  WebGL2RenderingContextBase
                           -> Nullable WebGLUniformLocation
                           -> GLboolean
                           -> Float32List
                           -> UndefOr GLuint
                           -> UndefOr GLuint
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniformMatrix3x4fv(a b c d e)"
  prim__uniformMatrix3x4fv :  WebGL2RenderingContextBase
                           -> Nullable WebGLUniformLocation
                           -> GLboolean
                           -> Float32List
                           -> UndefOr GLuint
                           -> UndefOr GLuint
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniformMatrix4x2fv(a b c d e)"
  prim__uniformMatrix4x2fv :  WebGL2RenderingContextBase
                           -> Nullable WebGLUniformLocation
                           -> GLboolean
                           -> Float32List
                           -> UndefOr GLuint
                           -> UndefOr GLuint
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniformMatrix4x3fv(a b c d e)"
  prim__uniformMatrix4x3fv :  WebGL2RenderingContextBase
                           -> Nullable WebGLUniformLocation
                           -> GLboolean
                           -> Float32List
                           -> UndefOr GLuint
                           -> UndefOr GLuint
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.vertexAttribDivisor(a b)"
  prim__vertexAttribDivisor :  WebGL2RenderingContextBase
                            -> GLuint
                            -> GLuint
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.vertexAttribI4i(a b c d e)"
  prim__vertexAttribI4i :  WebGL2RenderingContextBase
                        -> GLuint
                        -> GLint
                        -> GLint
                        -> GLint
                        -> GLint
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.vertexAttribI4iv(a b)"
  prim__vertexAttribI4iv :  WebGL2RenderingContextBase
                         -> GLuint
                         -> Int32List
                         -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.vertexAttribI4ui(a b c d e)"
  prim__vertexAttribI4ui :  WebGL2RenderingContextBase
                         -> GLuint
                         -> GLuint
                         -> GLuint
                         -> GLuint
                         -> GLuint
                         -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.vertexAttribI4uiv(a b)"
  prim__vertexAttribI4uiv :  WebGL2RenderingContextBase
                          -> GLuint
                          -> Uint32List
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.vertexAttribIPointer(a b c d e)"
  prim__vertexAttribIPointer :  WebGL2RenderingContextBase
                             -> GLuint
                             -> GLint
                             -> GLenum
                             -> GLsizei
                             -> GLintptr
                             -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.waitSync(a b c)"
  prim__waitSync :  WebGL2RenderingContextBase
                 -> WebGLSync
                 -> GLbitfield
                 -> GLint64
                 -> PrimIO ()

namespace WebGL2RenderingContextOverloads
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.bufferData(a b c)"
  prim__bufferData :  WebGL2RenderingContextOverloads
                   -> GLenum
                   -> GLsizeiptr
                   -> GLenum
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.bufferData(a b c)"
  prim__bufferData1 :  WebGL2RenderingContextOverloads
                    -> GLenum
                    -> Nullable BufferSource
                    -> GLenum
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.bufferData(a b c d e)"
  prim__bufferData2 :  WebGL2RenderingContextOverloads
                    -> GLenum
                    -> ArrayBufferView
                    -> GLenum
                    -> GLuint
                    -> UndefOr GLuint
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.bufferSubData(a b c)"
  prim__bufferSubData :  WebGL2RenderingContextOverloads
                      -> GLenum
                      -> GLintptr
                      -> BufferSource
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.bufferSubData(a b c d e)"
  prim__bufferSubData1 :  WebGL2RenderingContextOverloads
                       -> GLenum
                       -> GLintptr
                       -> ArrayBufferView
                       -> GLuint
                       -> UndefOr GLuint
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.compressedTexImage2D(a b c d e f g h)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.compressedTexImage2D(a b c d e f g h i)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.compressedTexSubImage2D(a b c d e f g h i)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.compressedTexSubImage2D(a b c d e f g h i j)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.readPixels(a b c d e f g)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.readPixels(a b c d e f g)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.readPixels(a b c d e f g h)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.texImage2D(a b c d e f g h i)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.texImage2D(a b c d e f)"
  prim__texImage2D1 :  WebGL2RenderingContextOverloads
                    -> GLenum
                    -> GLint
                    -> GLint
                    -> GLenum
                    -> GLenum
                    -> TexImageSource
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.texImage2D(a b c d e f g h i)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.texImage2D(a b c d e f g h i)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.texImage2D(a b c d e f g h i j)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.texSubImage2D(a b c d e f g h i)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.texSubImage2D(a b c d e f g)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.texSubImage2D(a b c d e f g h i)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.texSubImage2D(a b c d e f g h i)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i,j)=>x.texSubImage2D(a b c d e f g h i j)"
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
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniform1fv(a b c d)"
  prim__uniform1fv :  WebGL2RenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Float32List
                   -> UndefOr GLuint
                   -> UndefOr GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniform1iv(a b c d)"
  prim__uniform1iv :  WebGL2RenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Int32List
                   -> UndefOr GLuint
                   -> UndefOr GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniform2fv(a b c d)"
  prim__uniform2fv :  WebGL2RenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Float32List
                   -> UndefOr GLuint
                   -> UndefOr GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniform2iv(a b c d)"
  prim__uniform2iv :  WebGL2RenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Int32List
                   -> UndefOr GLuint
                   -> UndefOr GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniform3fv(a b c d)"
  prim__uniform3fv :  WebGL2RenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Float32List
                   -> UndefOr GLuint
                   -> UndefOr GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniform3iv(a b c d)"
  prim__uniform3iv :  WebGL2RenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Int32List
                   -> UndefOr GLuint
                   -> UndefOr GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniform4fv(a b c d)"
  prim__uniform4fv :  WebGL2RenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Float32List
                   -> UndefOr GLuint
                   -> UndefOr GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniform4iv(a b c d)"
  prim__uniform4iv :  WebGL2RenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Int32List
                   -> UndefOr GLuint
                   -> UndefOr GLuint
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniformMatrix2fv(a b c d e)"
  prim__uniformMatrix2fv :  WebGL2RenderingContextOverloads
                         -> Nullable WebGLUniformLocation
                         -> GLboolean
                         -> Float32List
                         -> UndefOr GLuint
                         -> UndefOr GLuint
                         -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniformMatrix3fv(a b c d e)"
  prim__uniformMatrix3fv :  WebGL2RenderingContextOverloads
                         -> Nullable WebGLUniformLocation
                         -> GLboolean
                         -> Float32List
                         -> UndefOr GLuint
                         -> UndefOr GLuint
                         -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniformMatrix4fv(a b c d e)"
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
  %foreign "browser:lambda:(x,a)=>x.activeTexture(a)"
  prim__activeTexture : WebGLRenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.attachShader(a b)"
  prim__attachShader :  WebGLRenderingContextBase
                     -> WebGLProgram
                     -> WebGLShader
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.bindAttribLocation(a b c)"
  prim__bindAttribLocation :  WebGLRenderingContextBase
                           -> WebGLProgram
                           -> GLuint
                           -> String
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.bindBuffer(a b)"
  prim__bindBuffer :  WebGLRenderingContextBase
                   -> GLenum
                   -> Nullable WebGLBuffer
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.bindFramebuffer(a b)"
  prim__bindFramebuffer :  WebGLRenderingContextBase
                        -> GLenum
                        -> Nullable WebGLFramebuffer
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.bindRenderbuffer(a b)"
  prim__bindRenderbuffer :  WebGLRenderingContextBase
                         -> GLenum
                         -> Nullable WebGLRenderbuffer
                         -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.bindTexture(a b)"
  prim__bindTexture :  WebGLRenderingContextBase
                    -> GLenum
                    -> Nullable WebGLTexture
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.blendColor(a b c d)"
  prim__blendColor :  WebGLRenderingContextBase
                   -> GLclampf
                   -> GLclampf
                   -> GLclampf
                   -> GLclampf
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.blendEquationSeparate(a b)"
  prim__blendEquationSeparate :  WebGLRenderingContextBase
                              -> GLenum
                              -> GLenum
                              -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.blendEquation(a)"
  prim__blendEquation : WebGLRenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.blendFuncSeparate(a b c d)"
  prim__blendFuncSeparate :  WebGLRenderingContextBase
                          -> GLenum
                          -> GLenum
                          -> GLenum
                          -> GLenum
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.blendFunc(a b)"
  prim__blendFunc : WebGLRenderingContextBase -> GLenum -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.checkFramebufferStatus(a)"
  prim__checkFramebufferStatus :  WebGLRenderingContextBase
                               -> GLenum
                               -> PrimIO GLenum
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.clearColor(a b c d)"
  prim__clearColor :  WebGLRenderingContextBase
                   -> GLclampf
                   -> GLclampf
                   -> GLclampf
                   -> GLclampf
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.clearDepth(a)"
  prim__clearDepth : WebGLRenderingContextBase -> GLclampf -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.clearStencil(a)"
  prim__clearStencil : WebGLRenderingContextBase -> GLint -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.clear(a)"
  prim__clear : WebGLRenderingContextBase -> GLbitfield -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.colorMask(a b c d)"
  prim__colorMask :  WebGLRenderingContextBase
                  -> GLboolean
                  -> GLboolean
                  -> GLboolean
                  -> GLboolean
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.compileShader(a)"
  prim__compileShader : WebGLRenderingContextBase -> WebGLShader -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.copyTexImage2D(a b c d e f g h)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.copyTexSubImage2D(a b c d e f g h)"
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
  %foreign "browser:lambda:x=>x.createBuffer()"
  prim__createBuffer :  WebGLRenderingContextBase
                     -> PrimIO (Nullable WebGLBuffer)
  
  export
  %foreign "browser:lambda:x=>x.createFramebuffer()"
  prim__createFramebuffer :  WebGLRenderingContextBase
                          -> PrimIO (Nullable WebGLFramebuffer)
  
  export
  %foreign "browser:lambda:x=>x.createProgram()"
  prim__createProgram :  WebGLRenderingContextBase
                      -> PrimIO (Nullable WebGLProgram)
  
  export
  %foreign "browser:lambda:x=>x.createRenderbuffer()"
  prim__createRenderbuffer :  WebGLRenderingContextBase
                           -> PrimIO (Nullable WebGLRenderbuffer)
  
  export
  %foreign "browser:lambda:(x,a)=>x.createShader(a)"
  prim__createShader :  WebGLRenderingContextBase
                     -> GLenum
                     -> PrimIO (Nullable WebGLShader)
  
  export
  %foreign "browser:lambda:x=>x.createTexture()"
  prim__createTexture :  WebGLRenderingContextBase
                      -> PrimIO (Nullable WebGLTexture)
  
  export
  %foreign "browser:lambda:(x,a)=>x.cullFace(a)"
  prim__cullFace : WebGLRenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.deleteBuffer(a)"
  prim__deleteBuffer :  WebGLRenderingContextBase
                     -> Nullable WebGLBuffer
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.deleteFramebuffer(a)"
  prim__deleteFramebuffer :  WebGLRenderingContextBase
                          -> Nullable WebGLFramebuffer
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.deleteProgram(a)"
  prim__deleteProgram :  WebGLRenderingContextBase
                      -> Nullable WebGLProgram
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.deleteRenderbuffer(a)"
  prim__deleteRenderbuffer :  WebGLRenderingContextBase
                           -> Nullable WebGLRenderbuffer
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.deleteShader(a)"
  prim__deleteShader :  WebGLRenderingContextBase
                     -> Nullable WebGLShader
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.deleteTexture(a)"
  prim__deleteTexture :  WebGLRenderingContextBase
                      -> Nullable WebGLTexture
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.depthFunc(a)"
  prim__depthFunc : WebGLRenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.depthMask(a)"
  prim__depthMask : WebGLRenderingContextBase -> GLboolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.depthRange(a b)"
  prim__depthRange :  WebGLRenderingContextBase
                   -> GLclampf
                   -> GLclampf
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.detachShader(a b)"
  prim__detachShader :  WebGLRenderingContextBase
                     -> WebGLProgram
                     -> WebGLShader
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.disableVertexAttribArray(a)"
  prim__disableVertexAttribArray :  WebGLRenderingContextBase
                                 -> GLuint
                                 -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.disable(a)"
  prim__disable : WebGLRenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.drawArrays(a b c)"
  prim__drawArrays :  WebGLRenderingContextBase
                   -> GLenum
                   -> GLint
                   -> GLsizei
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.drawElements(a b c d)"
  prim__drawElements :  WebGLRenderingContextBase
                     -> GLenum
                     -> GLsizei
                     -> GLenum
                     -> GLintptr
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.enableVertexAttribArray(a)"
  prim__enableVertexAttribArray :  WebGLRenderingContextBase
                                -> GLuint
                                -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.enable(a)"
  prim__enable : WebGLRenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.finish()"
  prim__finish : WebGLRenderingContextBase -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.flush()"
  prim__flush : WebGLRenderingContextBase -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.framebufferRenderbuffer(a b c d)"
  prim__framebufferRenderbuffer :  WebGLRenderingContextBase
                                -> GLenum
                                -> GLenum
                                -> GLenum
                                -> Nullable WebGLRenderbuffer
                                -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.framebufferTexture2D(a b c d e)"
  prim__framebufferTexture2D :  WebGLRenderingContextBase
                             -> GLenum
                             -> GLenum
                             -> GLenum
                             -> Nullable WebGLTexture
                             -> GLint
                             -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.frontFace(a)"
  prim__frontFace : WebGLRenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.generateMipmap(a)"
  prim__generateMipmap : WebGLRenderingContextBase -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getActiveAttrib(a b)"
  prim__getActiveAttrib :  WebGLRenderingContextBase
                        -> WebGLProgram
                        -> GLuint
                        -> PrimIO (Nullable WebGLActiveInfo)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getActiveUniform(a b)"
  prim__getActiveUniform :  WebGLRenderingContextBase
                         -> WebGLProgram
                         -> GLuint
                         -> PrimIO (Nullable WebGLActiveInfo)
  
  export
  %foreign "browser:lambda:(x,a)=>x.getAttachedShaders(a)"
  prim__getAttachedShaders :  WebGLRenderingContextBase
                           -> WebGLProgram
                           -> PrimIO (Nullable (Array WebGLShader))
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getAttribLocation(a b)"
  prim__getAttribLocation :  WebGLRenderingContextBase
                          -> WebGLProgram
                          -> String
                          -> PrimIO GLint
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getBufferParameter(a b)"
  prim__getBufferParameter :  WebGLRenderingContextBase
                           -> GLenum
                           -> GLenum
                           -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:x=>x.getContextAttributes()"
  prim__getContextAttributes :  WebGLRenderingContextBase
                             -> PrimIO (Nullable WebGLContextAttributes)
  
  export
  %foreign "browser:lambda:x=>x.getError()"
  prim__getError : WebGLRenderingContextBase -> PrimIO GLenum
  
  export
  %foreign "browser:lambda:(x,a)=>x.getExtension(a)"
  prim__getExtension :  WebGLRenderingContextBase
                     -> String
                     -> PrimIO (Nullable Object)
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.getFramebufferAttachmentParameter(a b c)"
  prim__getFramebufferAttachmentParameter :  WebGLRenderingContextBase
                                          -> GLenum
                                          -> GLenum
                                          -> GLenum
                                          -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a)=>x.getParameter(a)"
  prim__getParameter : WebGLRenderingContextBase -> GLenum -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a)=>x.getProgramInfoLog(a)"
  prim__getProgramInfoLog :  WebGLRenderingContextBase
                          -> WebGLProgram
                          -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getProgramParameter(a b)"
  prim__getProgramParameter :  WebGLRenderingContextBase
                            -> WebGLProgram
                            -> GLenum
                            -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getRenderbufferParameter(a b)"
  prim__getRenderbufferParameter :  WebGLRenderingContextBase
                                 -> GLenum
                                 -> GLenum
                                 -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a)=>x.getShaderInfoLog(a)"
  prim__getShaderInfoLog :  WebGLRenderingContextBase
                         -> WebGLShader
                         -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getShaderParameter(a b)"
  prim__getShaderParameter :  WebGLRenderingContextBase
                           -> WebGLShader
                           -> GLenum
                           -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getShaderPrecisionFormat(a b)"
  prim__getShaderPrecisionFormat :  WebGLRenderingContextBase
                                 -> GLenum
                                 -> GLenum
                                 -> PrimIO (Nullable WebGLShaderPrecisionFormat)
  
  export
  %foreign "browser:lambda:(x,a)=>x.getShaderSource(a)"
  prim__getShaderSource :  WebGLRenderingContextBase
                        -> WebGLShader
                        -> PrimIO (Nullable String)
  
  export
  %foreign "browser:lambda:x=>x.getSupportedExtensions()"
  prim__getSupportedExtensions :  WebGLRenderingContextBase
                               -> PrimIO (Nullable (Array String))
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getTexParameter(a b)"
  prim__getTexParameter :  WebGLRenderingContextBase
                        -> GLenum
                        -> GLenum
                        -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getUniformLocation(a b)"
  prim__getUniformLocation :  WebGLRenderingContextBase
                           -> WebGLProgram
                           -> String
                           -> PrimIO (Nullable WebGLUniformLocation)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getUniform(a b)"
  prim__getUniform :  WebGLRenderingContextBase
                   -> WebGLProgram
                   -> WebGLUniformLocation
                   -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getVertexAttribOffset(a b)"
  prim__getVertexAttribOffset :  WebGLRenderingContextBase
                              -> GLuint
                              -> GLenum
                              -> PrimIO GLintptr
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getVertexAttrib(a b)"
  prim__getVertexAttrib :  WebGLRenderingContextBase
                        -> GLuint
                        -> GLenum
                        -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.hint(a b)"
  prim__hint : WebGLRenderingContextBase -> GLenum -> GLenum -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.isBuffer(a)"
  prim__isBuffer :  WebGLRenderingContextBase
                 -> Nullable WebGLBuffer
                 -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:x=>x.isContextLost()"
  prim__isContextLost : WebGLRenderingContextBase -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a)=>x.isEnabled(a)"
  prim__isEnabled : WebGLRenderingContextBase -> GLenum -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a)=>x.isFramebuffer(a)"
  prim__isFramebuffer :  WebGLRenderingContextBase
                      -> Nullable WebGLFramebuffer
                      -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a)=>x.isProgram(a)"
  prim__isProgram :  WebGLRenderingContextBase
                  -> Nullable WebGLProgram
                  -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a)=>x.isRenderbuffer(a)"
  prim__isRenderbuffer :  WebGLRenderingContextBase
                       -> Nullable WebGLRenderbuffer
                       -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a)=>x.isShader(a)"
  prim__isShader :  WebGLRenderingContextBase
                 -> Nullable WebGLShader
                 -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a)=>x.isTexture(a)"
  prim__isTexture :  WebGLRenderingContextBase
                  -> Nullable WebGLTexture
                  -> PrimIO GLboolean
  
  export
  %foreign "browser:lambda:(x,a)=>x.lineWidth(a)"
  prim__lineWidth : WebGLRenderingContextBase -> GLfloat -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.linkProgram(a)"
  prim__linkProgram : WebGLRenderingContextBase -> WebGLProgram -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.pixelStorei(a b)"
  prim__pixelStorei : WebGLRenderingContextBase -> GLenum -> GLint -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.polygonOffset(a b)"
  prim__polygonOffset :  WebGLRenderingContextBase
                      -> GLfloat
                      -> GLfloat
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.renderbufferStorage(a b c d)"
  prim__renderbufferStorage :  WebGLRenderingContextBase
                            -> GLenum
                            -> GLenum
                            -> GLsizei
                            -> GLsizei
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.sampleCoverage(a b)"
  prim__sampleCoverage :  WebGLRenderingContextBase
                       -> GLclampf
                       -> GLboolean
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.scissor(a b c d)"
  prim__scissor :  WebGLRenderingContextBase
                -> GLint
                -> GLint
                -> GLsizei
                -> GLsizei
                -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.shaderSource(a b)"
  prim__shaderSource :  WebGLRenderingContextBase
                     -> WebGLShader
                     -> String
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.stencilFuncSeparate(a b c d)"
  prim__stencilFuncSeparate :  WebGLRenderingContextBase
                            -> GLenum
                            -> GLenum
                            -> GLint
                            -> GLuint
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.stencilFunc(a b c)"
  prim__stencilFunc :  WebGLRenderingContextBase
                    -> GLenum
                    -> GLint
                    -> GLuint
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.stencilMaskSeparate(a b)"
  prim__stencilMaskSeparate :  WebGLRenderingContextBase
                            -> GLenum
                            -> GLuint
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.stencilMask(a)"
  prim__stencilMask : WebGLRenderingContextBase -> GLuint -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.stencilOpSeparate(a b c d)"
  prim__stencilOpSeparate :  WebGLRenderingContextBase
                          -> GLenum
                          -> GLenum
                          -> GLenum
                          -> GLenum
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.stencilOp(a b c)"
  prim__stencilOp :  WebGLRenderingContextBase
                  -> GLenum
                  -> GLenum
                  -> GLenum
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.texParameterf(a b c)"
  prim__texParameterf :  WebGLRenderingContextBase
                      -> GLenum
                      -> GLenum
                      -> GLfloat
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.texParameteri(a b c)"
  prim__texParameteri :  WebGLRenderingContextBase
                      -> GLenum
                      -> GLenum
                      -> GLint
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.uniform1f(a b)"
  prim__uniform1f :  WebGLRenderingContextBase
                  -> Nullable WebGLUniformLocation
                  -> GLfloat
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.uniform1i(a b)"
  prim__uniform1i :  WebGLRenderingContextBase
                  -> Nullable WebGLUniformLocation
                  -> GLint
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.uniform2f(a b c)"
  prim__uniform2f :  WebGLRenderingContextBase
                  -> Nullable WebGLUniformLocation
                  -> GLfloat
                  -> GLfloat
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.uniform2i(a b c)"
  prim__uniform2i :  WebGLRenderingContextBase
                  -> Nullable WebGLUniformLocation
                  -> GLint
                  -> GLint
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniform3f(a b c d)"
  prim__uniform3f :  WebGLRenderingContextBase
                  -> Nullable WebGLUniformLocation
                  -> GLfloat
                  -> GLfloat
                  -> GLfloat
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.uniform3i(a b c d)"
  prim__uniform3i :  WebGLRenderingContextBase
                  -> Nullable WebGLUniformLocation
                  -> GLint
                  -> GLint
                  -> GLint
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform4f(a b c d e)"
  prim__uniform4f :  WebGLRenderingContextBase
                  -> Nullable WebGLUniformLocation
                  -> GLfloat
                  -> GLfloat
                  -> GLfloat
                  -> GLfloat
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.uniform4i(a b c d e)"
  prim__uniform4i :  WebGLRenderingContextBase
                  -> Nullable WebGLUniformLocation
                  -> GLint
                  -> GLint
                  -> GLint
                  -> GLint
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.useProgram(a)"
  prim__useProgram :  WebGLRenderingContextBase
                   -> Nullable WebGLProgram
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.validateProgram(a)"
  prim__validateProgram : WebGLRenderingContextBase -> WebGLProgram -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.vertexAttrib1f(a b)"
  prim__vertexAttrib1f :  WebGLRenderingContextBase
                       -> GLuint
                       -> GLfloat
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.vertexAttrib1fv(a b)"
  prim__vertexAttrib1fv :  WebGLRenderingContextBase
                        -> GLuint
                        -> Float32List
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.vertexAttrib2f(a b c)"
  prim__vertexAttrib2f :  WebGLRenderingContextBase
                       -> GLuint
                       -> GLfloat
                       -> GLfloat
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.vertexAttrib2fv(a b)"
  prim__vertexAttrib2fv :  WebGLRenderingContextBase
                        -> GLuint
                        -> Float32List
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.vertexAttrib3f(a b c d)"
  prim__vertexAttrib3f :  WebGLRenderingContextBase
                       -> GLuint
                       -> GLfloat
                       -> GLfloat
                       -> GLfloat
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.vertexAttrib3fv(a b)"
  prim__vertexAttrib3fv :  WebGLRenderingContextBase
                        -> GLuint
                        -> Float32List
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.vertexAttrib4f(a b c d e)"
  prim__vertexAttrib4f :  WebGLRenderingContextBase
                       -> GLuint
                       -> GLfloat
                       -> GLfloat
                       -> GLfloat
                       -> GLfloat
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.vertexAttrib4fv(a b)"
  prim__vertexAttrib4fv :  WebGLRenderingContextBase
                        -> GLuint
                        -> Float32List
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.vertexAttribPointer(a b c d e f)"
  prim__vertexAttribPointer :  WebGLRenderingContextBase
                            -> GLuint
                            -> GLint
                            -> GLenum
                            -> GLboolean
                            -> GLsizei
                            -> GLintptr
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.viewport(a b c d)"
  prim__viewport :  WebGLRenderingContextBase
                 -> GLint
                 -> GLint
                 -> GLsizei
                 -> GLsizei
                 -> PrimIO ()

namespace WebGLRenderingContextOverloads
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.bufferData(a b c)"
  prim__bufferData :  WebGLRenderingContextOverloads
                   -> GLenum
                   -> GLsizeiptr
                   -> GLenum
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.bufferData(a b c)"
  prim__bufferData1 :  WebGLRenderingContextOverloads
                    -> GLenum
                    -> Nullable BufferSource
                    -> GLenum
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.bufferSubData(a b c)"
  prim__bufferSubData :  WebGLRenderingContextOverloads
                      -> GLenum
                      -> GLintptr
                      -> BufferSource
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.compressedTexImage2D(a b c d e f g)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.compressedTexSubImage2D(a b c d e f g h)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.readPixels(a b c d e f g)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.texImage2D(a b c d e f g h i)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.texImage2D(a b c d e f)"
  prim__texImage2D1 :  WebGLRenderingContextOverloads
                    -> GLenum
                    -> GLint
                    -> GLint
                    -> GLenum
                    -> GLenum
                    -> TexImageSource
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.texSubImage2D(a b c d e f g h i)"
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
  %foreign "browser:lambda:(x,a,b,c,d,e,f,g)=>x.texSubImage2D(a b c d e f g)"
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
  %foreign "browser:lambda:(x,a,b)=>x.uniform1fv(a b)"
  prim__uniform1fv :  WebGLRenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Float32List
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.uniform1iv(a b)"
  prim__uniform1iv :  WebGLRenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Int32List
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.uniform2fv(a b)"
  prim__uniform2fv :  WebGLRenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Float32List
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.uniform2iv(a b)"
  prim__uniform2iv :  WebGLRenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Int32List
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.uniform3fv(a b)"
  prim__uniform3fv :  WebGLRenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Float32List
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.uniform3iv(a b)"
  prim__uniform3iv :  WebGLRenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Int32List
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.uniform4fv(a b)"
  prim__uniform4fv :  WebGLRenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Float32List
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.uniform4iv(a b)"
  prim__uniform4iv :  WebGLRenderingContextOverloads
                   -> Nullable WebGLUniformLocation
                   -> Int32List
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.uniformMatrix2fv(a b c)"
  prim__uniformMatrix2fv :  WebGLRenderingContextOverloads
                         -> Nullable WebGLUniformLocation
                         -> GLboolean
                         -> Float32List
                         -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.uniformMatrix3fv(a b c)"
  prim__uniformMatrix3fv :  WebGLRenderingContextOverloads
                         -> Nullable WebGLUniformLocation
                         -> GLboolean
                         -> Float32List
                         -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.uniformMatrix4fv(a b c)"
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