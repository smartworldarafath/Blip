package net.blip.android.ui.components;

import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.window.AndroidDialog_androidKt;
import androidx.compose.ui.window.DialogProperties;
import defpackage.v8;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.components.TextFieldDialogKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextFieldDialogKt {
    public static final void a(final String str, final String str2, final Function1 function1, final Function1 function12, Function0 function0, final KeyboardOptions keyboardOptions, boolean z, DialogProperties dialogProperties, Composer composer, final int i) {
        int i2;
        int i3;
        int i4;
        boolean z2;
        Function0 function02;
        final DialogProperties dialogProperties2;
        int i5;
        str2.getClass();
        function12.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1222640645);
        if ((i & 6) == 0) {
            if (gapComposer.f(str)) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i2 = i | i5;
        } else {
            i2 = i;
        }
        int i6 = i2 | 432;
        if (gapComposer.f(str2)) {
            i3 = 2048;
        } else {
            i3 = 1024;
        }
        int i7 = i6 | i3;
        if (gapComposer.h(function12)) {
            i4 = 131072;
        } else {
            i4 = 65536;
        }
        int i8 = i7 | i4 | 905969664;
        final boolean z3 = true;
        if ((306783379 & i8) != 306783378) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i8 & 1, z2)) {
            DialogProperties dialogProperties3 = new DialogProperties();
            Object K = gapComposer.K();
            if (K == Composer.Companion.a) {
                int length = str2.length();
                K = SnapshotStateKt.g(new TextFieldValue(4, TextRangeKt.a(length, length), str2));
                gapComposer.g0(K);
            }
            function02 = function0;
            AndroidDialog_androidKt.a(function02, dialogProperties3, ComposableLambdaKt.b(879872324, new v8(str, keyboardOptions, (MutableState) K, function02, function12, function1), gapComposer), gapComposer, 438);
            dialogProperties2 = dialogProperties3;
        } else {
            function02 = function0;
            gapComposer.Q();
            z3 = z;
            dialogProperties2 = dialogProperties;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            final Function0 function03 = function02;
            r.d = new Function2() { // from class: vg
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    TextFieldDialogKt.a(str, str2, function1, function12, function03, keyboardOptions, z3, dialogProperties2, (Composer) obj, RecomposeScopeImplKt.a(i | 1));
                    return Unit.a;
                }
            };
        }
    }
}
