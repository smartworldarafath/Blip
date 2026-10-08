package androidx.compose.foundation;

import android.content.Context;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Density;
import defpackage.jb;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AndroidEdgeEffectOverscrollFactory implements OverscrollFactory {
    public final Context a;
    public final Density b;
    public final long c;
    public final PaddingValues d;

    public AndroidEdgeEffectOverscrollFactory(Context context, Density density, long j, PaddingValues paddingValues) {
        this.a = context;
        this.b = density;
        this.c = j;
        this.d = paddingValues;
    }

    public final boolean equals(Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!AndroidEdgeEffectOverscrollFactory.class.equals(cls)) {
            return false;
        }
        obj.getClass();
        AndroidEdgeEffectOverscrollFactory androidEdgeEffectOverscrollFactory = (AndroidEdgeEffectOverscrollFactory) obj;
        if (Intrinsics.a(this.a, androidEdgeEffectOverscrollFactory.a) && Intrinsics.a(this.b, androidEdgeEffectOverscrollFactory.b) && Color.c(this.c, androidEdgeEffectOverscrollFactory.c) && Intrinsics.a(this.d, androidEdgeEffectOverscrollFactory.d)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        int i = Color.i;
        return this.d.hashCode() + jb.a(hashCode, 31, this.c);
    }
}
