package androidx.compose.ui.scrollcapture;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RelativeScroller {
    public final int a;
    public final Function2 b;
    public float c;

    public RelativeScroller(int i, Function2 function2) {
        this.a = i;
        this.b = function2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(float f, ContinuationImpl continuationImpl) {
        RelativeScroller$scrollBy$1 relativeScroller$scrollBy$1;
        int i;
        if (continuationImpl instanceof RelativeScroller$scrollBy$1) {
            relativeScroller$scrollBy$1 = (RelativeScroller$scrollBy$1) continuationImpl;
            int i2 = relativeScroller$scrollBy$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                relativeScroller$scrollBy$1.o = i2 - Integer.MIN_VALUE;
                Object obj = relativeScroller$scrollBy$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = relativeScroller$scrollBy$1.o;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    Float f2 = new Float(f);
                    relativeScroller$scrollBy$1.o = 1;
                    obj = ((ComposeScrollCaptureCallback$scrollTracker$1) this.b).n(f2, relativeScroller$scrollBy$1);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                this.c += ((Number) obj).floatValue();
                return Unit.a;
            }
        }
        relativeScroller$scrollBy$1 = new RelativeScroller$scrollBy$1(this, continuationImpl);
        Object obj2 = relativeScroller$scrollBy$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = relativeScroller$scrollBy$1.o;
        if (i == 0) {
        }
        this.c += ((Number) obj2).floatValue();
        return Unit.a;
    }
}
