package androidx.compose.runtime;

import androidx.compose.ui.node.ComposeUiNode;
import defpackage.cf;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Updater<T> {
    public static final void a(Composer composer, Integer num) {
        if (((GapComposer) composer).S) {
            ((GapComposer) composer).b(num, ComposeUiNode.Companion.e);
        }
    }

    public static final void b(Composer composer) {
        ((GapComposer) composer).b(Unit.a, new cf(25, (byte) 0));
    }

    public static final void c(Composer composer, Object obj, Function2 function2) {
        if (!((GapComposer) composer).S && Intrinsics.a(((GapComposer) composer).K(), obj)) {
            return;
        }
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.g0(obj);
        gapComposer.b(obj, function2);
    }
}
