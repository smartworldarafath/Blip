package androidx.datastore.core;

import defpackage.u2;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$4", f = "DataStoreImpl.kt", l = {306, 309}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DataStoreImpl$readDataAndUpdateCache$4 extends SuspendLambda implements Function2<Boolean, Continuation<? super Pair<? extends State<Object>, ? extends Boolean>>, Object> {
    public Throwable n;
    public int o;
    public /* synthetic */ boolean p;
    public final /* synthetic */ DataStoreImpl q;
    public final /* synthetic */ int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readDataAndUpdateCache$4(DataStoreImpl dataStoreImpl, int i, Continuation continuation) {
        super(2, continuation);
        this.q = dataStoreImpl;
        this.r = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        Boolean bool = (Boolean) obj;
        bool.booleanValue();
        return ((DataStoreImpl$readDataAndUpdateCache$4) s(bool, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        DataStoreImpl$readDataAndUpdateCache$4 dataStoreImpl$readDataAndUpdateCache$4 = new DataStoreImpl$readDataAndUpdateCache$4(this.q, this.r, continuation);
        dataStoreImpl$readDataAndUpdateCache$4.p = ((Boolean) obj).booleanValue();
        return dataStoreImpl$readDataAndUpdateCache$4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v6 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        int i;
        Throwable th;
        boolean z;
        State state;
        boolean z2;
        boolean z3;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        boolean z4 = this.o;
        DataStoreImpl dataStoreImpl = this.q;
        try {
        } catch (Throwable th2) {
            if (z4 != 0) {
                InterProcessCoordinator f = dataStoreImpl.f();
                this.n = th2;
                this.p = z4;
                this.o = 2;
                Integer a = ((SingleProcessCoordinator) f).a();
                if (a != coroutineSingletons) {
                    obj = a;
                    th = th2;
                    z = z4 ? 1 : 0;
                }
            } else {
                i = this.r;
                th = th2;
                z3 = z4;
            }
        }
        if (z4 != 0) {
            if (z4 != 1) {
                if (z4 == 2) {
                    z = this.p;
                    th = this.n;
                    ResultKt.b(obj);
                    i = ((Number) obj).intValue();
                    z3 = z;
                    state = new ReadException(th, i);
                    z2 = z3;
                    return new Pair(state, Boolean.valueOf(z2));
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            boolean z5 = this.p;
            ResultKt.b(obj);
            z4 = z5;
        } else {
            ResultKt.b(obj);
            boolean z6 = this.p;
            this.p = z6;
            this.o = 1;
            obj = DataStoreImpl.e(dataStoreImpl, z6, this);
            z4 = z6;
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        state = (State) obj;
        z2 = z4;
        return new Pair(state, Boolean.valueOf(z2));
    }
}
