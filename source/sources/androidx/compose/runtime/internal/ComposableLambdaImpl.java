package androidx.compose.runtime.internal;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.graphics.Color;
import defpackage.b1;
import defpackage.r5;
import defpackage.s5;
import defpackage.t2;
import defpackage.x3;
import java.util.ArrayList;
import kotlin.Function;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function11;
import kotlin.jvm.functions.Function13;
import kotlin.jvm.functions.Function14;
import kotlin.jvm.functions.Function15;
import kotlin.jvm.functions.Function16;
import kotlin.jvm.functions.Function17;
import kotlin.jvm.functions.Function18;
import kotlin.jvm.functions.Function19;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function20;
import kotlin.jvm.functions.Function21;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.functions.Function9;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComposableLambdaImpl implements Function2, Function3, Function4, Function5, Function6, Function7, Function8, Function9, Function10, Function11, Function13, Function14, Function15, Function16, Function17, Function18, Function19, Function20, Function21 {
    public final int j;
    public final boolean k;
    public Function l;
    public RecomposeScopeImpl m;
    public ArrayList n;

    public ComposableLambdaImpl(int i, boolean z, Function function) {
        this.j = i;
        this.k = z;
        this.l = function;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.AdaptedFunctionReference] */
    public final Object d(int i, Composer composer) {
        int a;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(this.j);
        o(gapComposer);
        if (gapComposer.f(this)) {
            a = ComposableLambdaKt.a(2, 0);
        } else {
            a = ComposableLambdaKt.a(1, 0);
        }
        int i2 = i | a;
        Function function = this.l;
        TypeIntrinsics.c(2, function);
        Object n = ((Function2) function).n(gapComposer, Integer.valueOf(i2));
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new AdaptedFunctionReference(2, this, ComposableLambdaImpl.class, "invoke", "invoke(Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;", 8);
        }
        return n;
    }

    public final Object e(Float f, Color color, Object obj, Object obj2, Composer composer, int i) {
        int a;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(this.j);
        o(gapComposer);
        if (gapComposer.f(this)) {
            a = ComposableLambdaKt.a(2, 4);
        } else {
            a = ComposableLambdaKt.a(1, 4);
        }
        Function function = this.l;
        TypeIntrinsics.c(6, function);
        Object k = ((Function6) function).k(f, color, obj, obj2, gapComposer, Integer.valueOf(i | a));
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new x3(this, f, color, obj, obj2, i, 1);
        }
        return k;
    }

    @Override // kotlin.jvm.functions.Function3
    public final /* bridge */ /* synthetic */ Object f(Object obj, Object obj2, Object obj3) {
        return g(obj, (Composer) obj2, ((Number) obj3).intValue());
    }

    public final Object g(Object obj, Composer composer, int i) {
        int a;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(this.j);
        o(gapComposer);
        int i2 = 1;
        if (gapComposer.f(this)) {
            a = ComposableLambdaKt.a(2, 1);
        } else {
            a = ComposableLambdaKt.a(1, 1);
        }
        Function function = this.l;
        TypeIntrinsics.c(3, function);
        Object f = ((Function3) function).f(obj, gapComposer, Integer.valueOf(a | i));
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new t2(i, i2, this, obj);
        }
        return f;
    }

    public final Object h(Object obj, Boolean bool, Object obj2, Object obj3, Object obj4, Composer composer, int i) {
        int a;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(this.j);
        o(gapComposer);
        if (gapComposer.f(this)) {
            a = ComposableLambdaKt.a(2, 6);
        } else {
            a = ComposableLambdaKt.a(1, 6);
        }
        Function function = this.l;
        TypeIntrinsics.c(8, function);
        Object i2 = ((Function8) function).i(obj, bool, obj2, obj3, obj4, gapComposer, Integer.valueOf(i | a));
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new s5(this, obj, bool, obj2, obj3, obj4, i);
        }
        return i2;
    }

    @Override // kotlin.jvm.functions.Function8
    public final /* bridge */ /* synthetic */ Object i(Object obj, Boolean bool, Object obj2, Object obj3, Object obj4, GapComposer gapComposer, Integer num) {
        return h(obj, bool, obj2, obj3, obj4, gapComposer, num.intValue());
    }

    @Override // kotlin.jvm.functions.Function4
    public final /* bridge */ /* synthetic */ Object j(Object obj, Object obj2, Object obj3, Object obj4) {
        return l(obj, obj2, (Composer) obj3, ((Number) obj4).intValue());
    }

    @Override // kotlin.jvm.functions.Function6
    public final /* bridge */ /* synthetic */ Object k(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        return e((Float) obj, (Color) obj2, obj3, obj4, (Composer) obj5, ((Number) obj6).intValue());
    }

    public final Object l(Object obj, Object obj2, Composer composer, int i) {
        int a;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(this.j);
        o(gapComposer);
        if (gapComposer.f(this)) {
            a = ComposableLambdaKt.a(2, 2);
        } else {
            a = ComposableLambdaKt.a(1, 2);
        }
        Function function = this.l;
        TypeIntrinsics.c(4, function);
        Object j = ((Function4) function).j(obj, obj2, gapComposer, Integer.valueOf(a | i));
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new b1(this, obj, obj2, i);
        }
        return j;
    }

    public final Object m(Object obj, Object obj2, Object obj3, Composer composer, int i) {
        int a;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(this.j);
        o(gapComposer);
        if (gapComposer.f(this)) {
            a = ComposableLambdaKt.a(2, 3);
        } else {
            a = ComposableLambdaKt.a(1, 3);
        }
        Function function = this.l;
        TypeIntrinsics.c(5, function);
        Object q = ((Function5) function).q(obj, obj2, obj3, gapComposer, Integer.valueOf(a | i));
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new r5(this, obj, obj2, obj3, i, 0);
        }
        return q;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object n(Object obj, Object obj2) {
        return d(((Number) obj2).intValue(), (Composer) obj);
    }

    public final void o(Composer composer) {
        RecomposeScopeImpl w;
        if (this.k && (w = ((GapComposer) composer).w()) != null) {
            w.b |= 1;
            if (ComposableLambdaKt.c(this.m, w)) {
                this.m = w;
                return;
            }
            ArrayList arrayList = this.n;
            if (arrayList == null) {
                ArrayList arrayList2 = new ArrayList();
                this.n = arrayList2;
                arrayList2.add(w);
                return;
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (ComposableLambdaKt.c((RecomposeScope) arrayList.get(i), w)) {
                    arrayList.set(i, w);
                    return;
                }
            }
            arrayList.add(w);
        }
    }

    @Override // kotlin.jvm.functions.Function5
    public final /* bridge */ /* synthetic */ Object q(Object obj, Object obj2, Object obj3, Object obj4, Integer num) {
        return m(obj, obj2, obj3, (Composer) obj4, num.intValue());
    }
}
