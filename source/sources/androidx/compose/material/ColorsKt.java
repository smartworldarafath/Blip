package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ColorsKt {
    public static final StaticProvidableCompositionLocal a = new CompositionLocal(new defpackage.n(18));

    public static final long a(Colors colors, long j) {
        long e = colors.e();
        MutableState mutableState = colors.i;
        MutableState mutableState2 = colors.h;
        if (Color.c(j, e)) {
            return ((Color) ((SnapshotMutableStateImpl) mutableState2).getValue()).a;
        }
        if (Color.c(j, ((Color) ((SnapshotMutableStateImpl) colors.b).getValue()).a)) {
            return ((Color) ((SnapshotMutableStateImpl) mutableState2).getValue()).a;
        }
        if (Color.c(j, ((Color) ((SnapshotMutableStateImpl) colors.c).getValue()).a)) {
            return ((Color) ((SnapshotMutableStateImpl) mutableState).getValue()).a;
        }
        if (Color.c(j, ((Color) ((SnapshotMutableStateImpl) colors.d).getValue()).a)) {
            return ((Color) ((SnapshotMutableStateImpl) mutableState).getValue()).a;
        }
        if (Color.c(j, colors.b())) {
            return ((Color) ((SnapshotMutableStateImpl) colors.j).getValue()).a;
        }
        if (Color.c(j, colors.f())) {
            return colors.d();
        }
        if (Color.c(j, colors.c())) {
            return ((Color) ((SnapshotMutableStateImpl) colors.l).getValue()).a;
        }
        return Color.h;
    }

    public static final long b(long j, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.W(-583917585);
        long a2 = a(MaterialTheme.a(gapComposer), j);
        if (a2 == 16) {
            a2 = ((Color) gapComposer.j(ContentColorKt.a)).a;
        }
        gapComposer.p(false);
        return a2;
    }
}
