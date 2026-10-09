package defpackage;

import android.net.Uri;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.gallery.GalleryScreenKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class s8 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Uri k;
    public final /* synthetic */ float l;
    public final /* synthetic */ int m;

    public /* synthetic */ s8(Uri uri, float f, int i, int i2) {
        this.j = i2;
        this.k = uri;
        this.l = f;
        this.m = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.m;
        float f = this.l;
        Uri uri = this.k;
        Composer composer = (Composer) obj;
        ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                GalleryScreenKt.a(uri, f, composer, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            default:
                GalleryScreenKt.c(uri, f, composer, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
        }
    }
}
