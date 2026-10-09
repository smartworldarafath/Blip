package androidx.compose.ui.draw;

import androidx.compose.ui.unit.Density;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CacheDrawScope implements Density {
    public BuildDrawCacheParams j = EmptyBuildDrawCacheParams.j;
    public DrawResult k;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.compose.ui.draw.DrawResult] */
    public final DrawResult a(Function1 function1) {
        ?? obj = new Object();
        obj.a = function1;
        this.k = obj;
        return obj;
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float e0() {
        return this.j.getDensity().e0();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.j.getDensity().getDensity();
    }
}
