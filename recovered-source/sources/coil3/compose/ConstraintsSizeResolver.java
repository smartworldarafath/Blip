package coil3.compose;

import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import coil3.compose.internal.UtilsKt;
import coil3.size.Dimension;
import coil3.size.DimensionKt;
import coil3.size.Size;
import coil3.size.SizeResolver;
import defpackage.f;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ConstraintsSizeResolver implements SizeResolver, LayoutModifier {
    public long b;
    public ArrayList c;

    /* JADX WARN: Removed duplicated region for block: B:15:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    @Override // coil3.size.SizeResolver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object g(Continuation continuation) {
        ConstraintsSizeResolver$size$1 constraintsSizeResolver$size$1;
        int i;
        Ref$ObjectRef ref$ObjectRef;
        Throwable th;
        int h;
        Dimension dimension;
        int g;
        if (continuation instanceof ConstraintsSizeResolver$size$1) {
            constraintsSizeResolver$size$1 = (ConstraintsSizeResolver$size$1) continuation;
            int i2 = constraintsSizeResolver$size$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                constraintsSizeResolver$size$1.p = i2 - Integer.MIN_VALUE;
                Object obj = constraintsSizeResolver$size$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = constraintsSizeResolver$size$1.p;
                if (i == 0) {
                    if (i == 1) {
                        ref$ObjectRef = constraintsSizeResolver$size$1.m;
                        try {
                            ResultKt.b(obj);
                        } catch (Throwable th2) {
                            th = th2;
                            ArrayList arrayList = this.c;
                            Object obj2 = ref$ObjectRef.j;
                            TypeIntrinsics.a(arrayList);
                            arrayList.remove(obj2);
                            throw th;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    if (Constraints.k(this.b)) {
                        ?? obj3 = new Object();
                        try {
                            constraintsSizeResolver$size$1.m = obj3;
                            constraintsSizeResolver$size$1.p = 1;
                            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(constraintsSizeResolver$size$1));
                            cancellableContinuationImpl.v();
                            obj3.j = cancellableContinuationImpl;
                            this.c.add(cancellableContinuationImpl);
                            if (cancellableContinuationImpl.u() == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                            ref$ObjectRef = obj3;
                        } catch (Throwable th3) {
                            ref$ObjectRef = obj3;
                            th = th3;
                            ArrayList arrayList2 = this.c;
                            Object obj22 = ref$ObjectRef.j;
                            TypeIntrinsics.a(arrayList2);
                            arrayList2.remove(obj22);
                            throw th;
                        }
                    }
                    long j = this.b;
                    int i3 = UtilsKt.b;
                    h = Constraints.h(j);
                    Dimension dimension2 = Dimension.Undefined.a;
                    if (h != Integer.MAX_VALUE) {
                        DimensionKt.a(h);
                        dimension = new Dimension.Pixels(h);
                    } else {
                        dimension = dimension2;
                    }
                    g = Constraints.g(j);
                    if (g != Integer.MAX_VALUE) {
                        DimensionKt.a(g);
                        dimension2 = new Dimension.Pixels(g);
                    }
                    return new Size(dimension, dimension2);
                }
                ArrayList arrayList3 = this.c;
                Object obj4 = ref$ObjectRef.j;
                TypeIntrinsics.a(arrayList3);
                arrayList3.remove(obj4);
                long j2 = this.b;
                int i32 = UtilsKt.b;
                h = Constraints.h(j2);
                Dimension dimension22 = Dimension.Undefined.a;
                if (h != Integer.MAX_VALUE) {
                }
                g = Constraints.g(j2);
                if (g != Integer.MAX_VALUE) {
                }
                return new Size(dimension, dimension22);
            }
        }
        constraintsSizeResolver$size$1 = new ConstraintsSizeResolver$size$1(this, (ContinuationImpl) continuation);
        Object obj5 = constraintsSizeResolver$size$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = constraintsSizeResolver$size$1.p;
        if (i == 0) {
        }
        ArrayList arrayList32 = this.c;
        Object obj42 = ref$ObjectRef.j;
        TypeIntrinsics.a(arrayList32);
        arrayList32.remove(obj42);
        long j22 = this.b;
        int i322 = UtilsKt.b;
        h = Constraints.h(j22);
        Dimension dimension222 = Dimension.Undefined.a;
        if (h != Integer.MAX_VALUE) {
        }
        g = Constraints.g(j22);
        if (g != Integer.MAX_VALUE) {
        }
        return new Size(dimension, dimension222);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        Map map;
        o(j);
        Placeable w = measurable.w(j);
        int i = w.j;
        int i2 = w.k;
        f fVar = new f(w, 3);
        map = EmptyMap.j;
        return measureScope.B(i, i2, map, fVar);
    }

    public final void o(long j) {
        this.b = j;
        if (!Constraints.k(j)) {
            ArrayList arrayList = this.c;
            if (!arrayList.isEmpty()) {
                this.c = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((Continuation) it.next()).g(Unit.a);
                }
            }
        }
    }
}
