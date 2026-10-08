package androidx.compose.foundation.relocation;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.relocation.BringIntoViewModifierNodeKt;
import defpackage.r1;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BringIntoViewRequesterImpl implements BringIntoViewRequester {
    public final MutableVector a = new MutableVector(new BringIntoViewRequesterNode[16]);

    /* JADX WARN: Removed duplicated region for block: B:12:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x005f -> B:10:0x0062). Please report as a decompilation issue!!! */
    @Override // androidx.compose.foundation.relocation.BringIntoViewRequester
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Rect rect, ContinuationImpl continuationImpl) {
        BringIntoViewRequesterImpl$bringIntoView$1 bringIntoViewRequesterImpl$bringIntoView$1;
        int i;
        int i2;
        Rect rect2;
        int i3;
        Object[] objArr;
        if (continuationImpl instanceof BringIntoViewRequesterImpl$bringIntoView$1) {
            bringIntoViewRequesterImpl$bringIntoView$1 = (BringIntoViewRequesterImpl$bringIntoView$1) continuationImpl;
            int i4 = bringIntoViewRequesterImpl$bringIntoView$1.s;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                bringIntoViewRequesterImpl$bringIntoView$1.s = i4 - Integer.MIN_VALUE;
                Object obj = bringIntoViewRequesterImpl$bringIntoView$1.q;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = bringIntoViewRequesterImpl$bringIntoView$1.s;
                if (i == 0) {
                    if (i == 1) {
                        i2 = bringIntoViewRequesterImpl$bringIntoView$1.p;
                        i3 = bringIntoViewRequesterImpl$bringIntoView$1.o;
                        objArr = bringIntoViewRequesterImpl$bringIntoView$1.n;
                        Rect rect3 = bringIntoViewRequesterImpl$bringIntoView$1.m;
                        ResultKt.b(obj);
                        rect2 = rect3;
                        i3++;
                        if (i3 < i2) {
                            BringIntoViewRequesterNode bringIntoViewRequesterNode = (BringIntoViewRequesterNode) objArr[i3];
                            r1 r1Var = new r1(7, rect2);
                            bringIntoViewRequesterImpl$bringIntoView$1.m = rect2;
                            bringIntoViewRequesterImpl$bringIntoView$1.n = objArr;
                            bringIntoViewRequesterImpl$bringIntoView$1.o = i3;
                            bringIntoViewRequesterImpl$bringIntoView$1.p = i2;
                            bringIntoViewRequesterImpl$bringIntoView$1.s = 1;
                            if (BringIntoViewModifierNodeKt.a(bringIntoViewRequesterNode, r1Var, bringIntoViewRequesterImpl$bringIntoView$1) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                            i3++;
                            if (i3 < i2) {
                                return Unit.a;
                            }
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    MutableVector mutableVector = this.a;
                    Object[] objArr2 = mutableVector.j;
                    i2 = mutableVector.l;
                    rect2 = rect;
                    i3 = 0;
                    objArr = objArr2;
                    if (i3 < i2) {
                    }
                }
            }
        }
        bringIntoViewRequesterImpl$bringIntoView$1 = new BringIntoViewRequesterImpl$bringIntoView$1(this, continuationImpl);
        Object obj2 = bringIntoViewRequesterImpl$bringIntoView$1.q;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = bringIntoViewRequesterImpl$bringIntoView$1.s;
        if (i == 0) {
        }
    }
}
