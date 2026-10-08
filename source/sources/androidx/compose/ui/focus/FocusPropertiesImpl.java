package androidx.compose.ui.focus;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.viewinterop.a;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FocusPropertiesImpl implements FocusProperties {
    public static final /* synthetic */ int m = 0;
    public boolean a;
    public FocusRequester b;
    public FocusRequester c;
    public FocusRequester d;
    public FocusRequester e;
    public FocusRequester f;
    public FocusRequester g;
    public FocusRequester h;
    public FocusRequester i;
    public Function1 j;
    public Function1 k;
    public Rect l;

    @Override // androidx.compose.ui.focus.FocusProperties
    public final boolean a() {
        return this.a;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void b(a aVar) {
        this.k = aVar;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void c(boolean z) {
        this.a = z;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void d(Function1 function1) {
        this.j = function1;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void e(Rect rect) {
        this.l = rect;
    }
}
