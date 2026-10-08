package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import defpackage.b5;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ContextMenu_androidKt {
    public static final void a(TextFieldSelectionManager textFieldSelectionManager, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(2080741862);
        if ((i & 6) == 0) {
            if (gapComposer.h(textFieldSelectionManager)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i2 = i4 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i3 = 32;
            } else {
                i3 = 16;
            }
            i2 |= i3;
        }
        if ((i2 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            CommonContextMenuAreaKt.a(textFieldSelectionManager, composableLambdaImpl, gapComposer, i2 & 126);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new b5(textFieldSelectionManager, composableLambdaImpl, i, 1);
        }
    }
}
