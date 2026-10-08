package androidx.compose.material;

import androidx.compose.animation.core.Easing;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import defpackage.a7;
import defpackage.b8;
import defpackage.c8;
import defpackage.z6;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DrawerKt {
    public static final TweenSpec a = new TweenSpec(256, (Easing) null, 6);

    public static final DrawerState a(Composer composer) {
        DrawerValue drawerValue = DrawerValue.j;
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (K == composer$Companion$Empty$1) {
            K = new a7(8);
            gapComposer.g0(K);
        }
        Function1 function1 = (Function1) K;
        Object[] objArr = new Object[0];
        SaverKt$Saver$1 saverKt$Saver$1 = new SaverKt$Saver$1(new z6(3), new c8(function1, 0));
        boolean f = ((GapComposer) composer).f(function1);
        GapComposer gapComposer2 = (GapComposer) composer;
        Object K2 = gapComposer2.K();
        if (f || K2 == composer$Companion$Empty$1) {
            K2 = new b8(function1);
            gapComposer2.g0(K2);
        }
        return (DrawerState) RememberSaveableKt.d(objArr, saverKt$Saver$1, (Function0) K2, gapComposer2, 0);
    }
}
