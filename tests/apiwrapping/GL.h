#ifndef _GL_H_
#define _GL_H_

#include "glcorearb.h"

using PFNGETGLPROC = void *(const char *);

struct GL4API {
#include "GLAPI.h"
};

void GetAPI4(GL4API *api, PFNGETGLPROC GetGLProc);
void InjectAPITracer4(GL4API *api);

#endif /* _GL_H_ */
