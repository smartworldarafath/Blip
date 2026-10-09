package defpackage;

import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ra implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ TextDragObserver k;

    public /* synthetic */ ra(TextDragObserver textDragObserver, int i) {
        this.j = i;
        this.k = textDragObserver;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Unit unit = Unit.a;
        TextDragObserver textDragObserver = this.k;
        switch (i) {
            case 0:
                textDragObserver.a(((Offset) obj).a, SelectionAdjustment.Companion.a);
                return unit;
            case 1:
                PointerInputChange pointerInputChange = (PointerInputChange) obj;
                textDragObserver.e(PointerEventKt.f(pointerInputChange, false));
                pointerInputChange.a();
                return unit;
            default:
                PointerInputChange pointerInputChange2 = (PointerInputChange) obj;
                textDragObserver.e(PointerEventKt.f(pointerInputChange2, false));
                pointerInputChange2.a();
                return unit;
        }
    }
}
