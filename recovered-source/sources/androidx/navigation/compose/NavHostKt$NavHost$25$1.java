package androidx.navigation.compose;

import androidx.collection.MutableObjectFloatMap;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavHostController;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.navigation.compose.NavHostKt$NavHost$25$1", f = "NavHost.kt", l = {}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class NavHostKt$NavHost$25$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ Transition n;
    public final /* synthetic */ NavHostController o;
    public final /* synthetic */ NavBackStackEntry p;
    public final /* synthetic */ MutableObjectFloatMap q;
    public final /* synthetic */ State r;
    public final /* synthetic */ ComposeNavigator s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostKt$NavHost$25$1(Transition transition, NavHostController navHostController, NavBackStackEntry navBackStackEntry, MutableObjectFloatMap mutableObjectFloatMap, State state, ComposeNavigator composeNavigator, Continuation continuation) {
        super(2, continuation);
        this.n = transition;
        this.o = navHostController;
        this.p = navBackStackEntry;
        this.q = mutableObjectFloatMap;
        this.r = state;
        this.s = composeNavigator;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        NavHostKt$NavHost$25$1 navHostKt$NavHost$25$1 = (NavHostKt$NavHost$25$1) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        navHostKt$NavHost$25$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new NavHostKt$NavHost$25$1(this.n, this.o, this.p, this.q, this.r, this.s, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        Transition transition = this.n;
        Object a = transition.a.a();
        MutableState mutableState = transition.d;
        if (Intrinsics.a(a, ((SnapshotMutableStateImpl) mutableState).getValue()) && (((NavBackStackEntry) this.o.b.f.i()) == null || Intrinsics.a(((SnapshotMutableStateImpl) mutableState).getValue(), this.p))) {
            Iterator it = ((List) this.r.getValue()).iterator();
            while (it.hasNext()) {
                this.s.b().b((NavBackStackEntry) it.next());
            }
            MutableObjectFloatMap mutableObjectFloatMap = this.q;
            long[] jArr = mutableObjectFloatMap.a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((j & 255) < 128) {
                                int i4 = (i << 3) + i3;
                                Object obj2 = mutableObjectFloatMap.b[i4];
                                float f = mutableObjectFloatMap.c[i4];
                                if (!Intrinsics.a((String) obj2, ((NavBackStackEntry) ((SnapshotMutableStateImpl) mutableState).getValue()).o)) {
                                    mutableObjectFloatMap.e--;
                                    long[] jArr2 = mutableObjectFloatMap.a;
                                    int i5 = mutableObjectFloatMap.d;
                                    int i6 = i4 >> 3;
                                    int i7 = (i4 & 7) << 3;
                                    long j2 = (jArr2[i6] & (~(255 << i7))) | (254 << i7);
                                    jArr2[i6] = j2;
                                    jArr2[(((i4 - 7) & i5) + (i5 & 7)) >> 3] = j2;
                                    mutableObjectFloatMap.b[i4] = null;
                                }
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        }
                    }
                    if (i == length) {
                        break;
                    }
                    i++;
                }
            }
        }
        return Unit.a;
    }
}
