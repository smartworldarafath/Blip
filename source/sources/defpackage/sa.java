package defpackage;

import androidx.compose.foundation.text.TextDragObserver;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class sa implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ TextDragObserver k;

    public /* synthetic */ sa(TextDragObserver textDragObserver, int i) {
        this.j = i;
        this.k = textDragObserver;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        TextDragObserver textDragObserver = this.k;
        switch (i) {
            case 0:
                textDragObserver.b();
                return unit;
            default:
                textDragObserver.onCancel();
                return unit;
        }
    }
}
