package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ScrollableKt {
    public static final ScrollableKt$NoOpScrollScope$1 a = new Object();
    public static final ScrollableKt$DefaultScrollMotionDurationScale$1 b = new Object();
    public static final ScrollableKt$UnityDensity$1 c = new Object();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$FloatRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(ScrollingLogic scrollingLogic, long j, ContinuationImpl continuationImpl) {
        ScrollableKt$semanticsScrollBy$1 scrollableKt$semanticsScrollBy$1;
        int i;
        ScrollingLogic scrollingLogic2;
        Ref$FloatRef ref$FloatRef;
        if (continuationImpl instanceof ScrollableKt$semanticsScrollBy$1) {
            ScrollableKt$semanticsScrollBy$1 scrollableKt$semanticsScrollBy$12 = (ScrollableKt$semanticsScrollBy$1) continuationImpl;
            int i2 = scrollableKt$semanticsScrollBy$12.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                scrollableKt$semanticsScrollBy$12.p = i2 - Integer.MIN_VALUE;
                scrollableKt$semanticsScrollBy$1 = scrollableKt$semanticsScrollBy$12;
                Object obj = scrollableKt$semanticsScrollBy$1.o;
                Object obj2 = CoroutineSingletons.j;
                i = scrollableKt$semanticsScrollBy$1.p;
                if (i == 0) {
                    if (i == 1) {
                        Ref$FloatRef ref$FloatRef2 = scrollableKt$semanticsScrollBy$1.n;
                        ScrollingLogic scrollingLogic3 = scrollableKt$semanticsScrollBy$1.m;
                        ResultKt.b(obj);
                        ref$FloatRef = ref$FloatRef2;
                        scrollingLogic2 = scrollingLogic3;
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    ?? obj3 = new Object();
                    MutatePriority mutatePriority = MutatePriority.j;
                    Function2 scrollableKt$semanticsScrollBy$2 = new ScrollableKt$semanticsScrollBy$2(scrollingLogic, j, obj3, null);
                    scrollableKt$semanticsScrollBy$1.m = scrollingLogic;
                    scrollableKt$semanticsScrollBy$1.n = obj3;
                    scrollableKt$semanticsScrollBy$1.p = 1;
                    if (scrollingLogic.g(mutatePriority, scrollableKt$semanticsScrollBy$2, scrollableKt$semanticsScrollBy$1) == obj2) {
                        return obj2;
                    }
                    scrollingLogic2 = scrollingLogic;
                    ref$FloatRef = obj3;
                }
                return new Offset(scrollingLogic2.i(ref$FloatRef.j));
            }
        }
        scrollableKt$semanticsScrollBy$1 = new ContinuationImpl(continuationImpl);
        Object obj4 = scrollableKt$semanticsScrollBy$1.o;
        Object obj22 = CoroutineSingletons.j;
        i = scrollableKt$semanticsScrollBy$1.p;
        if (i == 0) {
        }
        return new Offset(scrollingLogic2.i(ref$FloatRef.j));
    }

    public static Modifier b(TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1, Orientation orientation, boolean z, boolean z2, MutableInteractionSource mutableInteractionSource) {
        return new ScrollableElement(textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1, orientation, z, z2, mutableInteractionSource);
    }
}
