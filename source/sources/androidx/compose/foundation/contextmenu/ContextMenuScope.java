package androidx.compose.foundation.contextmenu;

import androidx.compose.foundation.contextmenu.ComposableSingletons$ContextMenuUiKt;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import defpackage.a0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ContextMenuScope {
    public final SnapshotStateList a = new SnapshotStateList();

    public static void b(final ContextMenuScope contextMenuScope, final Function2 function2, final ComposableLambdaImpl composableLambdaImpl, final Function0 function0, int i) {
        if ((i & 8) != 0) {
            composableLambdaImpl = null;
        }
        contextMenuScope.a.add(new ComposableLambdaImpl(-1789283891, true, new Function3() { // from class: p6
            @Override // kotlin.jvm.functions.Function3
            public final Object f(Object obj, Object obj2, Object obj3) {
                boolean z;
                int i2;
                ContextMenuColors contextMenuColors = (ContextMenuColors) obj;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                if ((intValue & 6) == 0) {
                    if (((GapComposer) composer).f(contextMenuColors)) {
                        i2 = 4;
                    } else {
                        i2 = 2;
                    }
                    intValue |= i2;
                }
                if ((intValue & 19) != 18) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    String str = (String) Function2.this.n(gapComposer, 0);
                    if (StringsKt.t(str)) {
                        InlineClassHelperKt.c("Label must not be blank");
                    }
                    contextMenuScope.getClass();
                    ComposableSingletons$ContextMenuUiKt.a.i(str, Boolean.TRUE, contextMenuColors, composableLambdaImpl, function0, gapComposer, Integer.valueOf((intValue << 9) & 7168));
                } else {
                    gapComposer.Q();
                }
                return Unit.a;
            }
        }));
    }

    public final void a(ContextMenuColors contextMenuColors, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-798501095);
        if (gapComposer.f(contextMenuColors)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i2 | i;
        if (gapComposer.f(this)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i5 = i4 | i3;
        if ((i5 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i5 & 1, z)) {
            SnapshotStateList snapshotStateList = this.a;
            int size = snapshotStateList.size();
            for (int i6 = 0; i6 < size; i6++) {
                ((Function3) snapshotStateList.get(i6)).f(contextMenuColors, gapComposer, Integer.valueOf(i5 & 14));
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new a0(i, 7, this, contextMenuColors);
        }
    }
}
