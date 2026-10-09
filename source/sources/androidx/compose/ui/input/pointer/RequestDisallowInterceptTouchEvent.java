package androidx.compose.ui.input.pointer;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RequestDisallowInterceptTouchEvent implements Function1<Boolean, Unit> {
    public PointerInteropFilter j;

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        PointerInteropFilter pointerInteropFilter = this.j;
        if (pointerInteropFilter != null) {
            pointerInteropFilter.d = booleanValue;
        }
        return Unit.a;
    }
}
