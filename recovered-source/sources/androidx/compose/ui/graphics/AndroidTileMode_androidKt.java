package androidx.compose.ui.graphics;

import android.graphics.Shader;
import android.os.Build;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidTileMode_androidKt {
    public static final Shader.TileMode a(int i) {
        Shader.TileMode tileMode;
        if (i == 0) {
            return Shader.TileMode.CLAMP;
        }
        if (i == 1) {
            return Shader.TileMode.REPEAT;
        }
        if (i == 2) {
            return Shader.TileMode.MIRROR;
        }
        if (i == 3) {
            if (Build.VERSION.SDK_INT >= 31) {
                tileMode = Shader.TileMode.DECAL;
                return tileMode;
            }
            return Shader.TileMode.CLAMP;
        }
        return Shader.TileMode.CLAMP;
    }
}
