package androidx.media3.exoplayer.video.spherical;

import android.opengl.GLES20;
import androidx.media3.common.util.GlProgram;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.Log;
import androidx.media3.exoplayer.video.spherical.Projection;
import java.nio.FloatBuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ProjectionRenderer {
    public static final float[] i = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};
    public static final float[] j = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};
    public static final float[] k = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};
    public int a;
    public MeshData b;
    public GlProgram c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class MeshData {
        public final int a;
        public final FloatBuffer b;
        public final FloatBuffer c;
        public final int d;

        public MeshData(Projection.SubMesh subMesh) {
            float[] fArr = subMesh.c;
            this.a = fArr.length / 3;
            this.b = GlUtil.c(fArr);
            this.c = GlUtil.c(subMesh.d);
            int i = subMesh.b;
            if (i != 1) {
                if (i != 2) {
                    this.d = 4;
                    return;
                } else {
                    this.d = 6;
                    return;
                }
            }
            this.d = 5;
        }
    }

    public static boolean b(Projection projection) {
        Projection.Mesh mesh = projection.a;
        Projection.Mesh mesh2 = projection.b;
        Projection.SubMesh[] subMeshArr = mesh.a;
        if (subMeshArr.length == 1 && subMeshArr[0].a == 0) {
            Projection.SubMesh[] subMeshArr2 = mesh2.a;
            if (subMeshArr2.length == 1 && subMeshArr2[0].a == 0) {
                return true;
            }
        }
        return false;
    }

    public final void a() {
        try {
            GlProgram glProgram = new GlProgram("uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n", "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n");
            this.c = glProgram;
            this.d = GLES20.glGetUniformLocation(glProgram.a, "uMvpMatrix");
            this.e = GLES20.glGetUniformLocation(this.c.a, "uTexMatrix");
            this.f = this.c.b("aPosition");
            this.g = this.c.b("aTexCoords");
            this.h = GLES20.glGetUniformLocation(this.c.a, "uTexture");
        } catch (GlUtil.GlException e) {
            Log.d("ProjectionRenderer", "Failed to initialize the program", e);
        }
    }
}
