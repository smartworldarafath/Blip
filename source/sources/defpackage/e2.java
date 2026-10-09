package defpackage;

import android.net.Uri;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.controls.AndroidSwitchKt;
import net.blip.android.ui.gallery.GalleryPagerContentKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e2 implements Function2 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ boolean l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;

    public /* synthetic */ e2(Uri uri, boolean z, boolean z2, Function0 function0, Function0 function02, int i) {
        this.m = uri;
        this.k = z;
        this.l = z2;
        this.n = function0;
        this.o = function02;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        Object obj3 = this.o;
        Object obj4 = this.n;
        Object obj5 = this.m;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int a = RecomposeScopeImplKt.a(385);
                AndroidSwitchKt.a(this.k, (Function1) obj5, (Modifier) obj4, this.l, (MutableInteractionSource) obj3, (Composer) obj, a);
                return unit;
            default:
                ((Integer) obj2).getClass();
                int a2 = RecomposeScopeImplKt.a(3073);
                GalleryPagerContentKt.a((Uri) obj5, this.k, this.l, (Function0) obj4, (Function0) obj3, (Composer) obj, a2);
                return unit;
        }
    }

    public /* synthetic */ e2(boolean z, Function1 function1, Modifier modifier, boolean z2, MutableInteractionSource mutableInteractionSource, int i) {
        this.k = z;
        this.m = function1;
        this.n = modifier;
        this.l = z2;
        this.o = mutableInteractionSource;
    }
}
