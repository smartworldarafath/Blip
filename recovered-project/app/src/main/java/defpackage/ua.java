package defpackage;

import androidx.compose.foundation.MagnifierNode;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ua implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ MagnifierNode k;

    public /* synthetic */ ua(MagnifierNode magnifierNode, int i) {
        this.j = i;
        this.k = magnifierNode;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        long j;
        int i = this.j;
        MagnifierNode magnifierNode = this.k;
        switch (i) {
            case 0:
                magnifierNode.a1();
                return Unit.a;
            case 1:
                return new Offset(magnifierNode.F);
            default:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) ((SnapshotMutableStateImpl) magnifierNode.D).getValue();
                if (layoutCoordinates != null) {
                    j = layoutCoordinates.S(0L);
                } else {
                    j = 9205357640488583168L;
                }
                return new Offset(j);
        }
    }
}
