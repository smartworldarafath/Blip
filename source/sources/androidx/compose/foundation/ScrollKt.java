package androidx.compose.foundation;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import defpackage.vc;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ScrollKt {
    public static final ScrollState a(Composer composer) {
        Object[] objArr = new Object[0];
        boolean d = ((GapComposer) composer).d(0);
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        if (d || K == Composer.Companion.a) {
            K = new vc(15);
            gapComposer.g0(K);
        }
        return (ScrollState) RememberSaveableKt.d(objArr, ScrollState.k, (Function0) K, gapComposer, 0);
    }

    public static Modifier b(Modifier modifier, ScrollState scrollState) {
        return modifier.l(ClipKt.a(Modifier.Companion.b, VerticalScrollableClipShape.a)).l(new ScrollableAreaElement(null, null, null, Orientation.j, scrollState, scrollState.e, true, true)).l(new ScrollingLayoutElement(scrollState));
    }
}
