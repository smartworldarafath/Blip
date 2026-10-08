package androidx.datastore.core;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$2", f = "DataStoreImpl.kt", l = {370, 371}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DataStoreImpl$readDataOrHandleCorruption$2 extends SuspendLambda implements Function2<Boolean, Continuation<? super Data<Object>>, Object> {
    public Object n;
    public int o;
    public /* synthetic */ boolean p;
    public final /* synthetic */ DataStoreImpl q;
    public final /* synthetic */ int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readDataOrHandleCorruption$2(DataStoreImpl dataStoreImpl, int i, Continuation continuation) {
        super(2, continuation);
        this.q = dataStoreImpl;
        this.r = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        Boolean bool = (Boolean) obj;
        bool.booleanValue();
        return ((DataStoreImpl$readDataOrHandleCorruption$2) s(bool, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        DataStoreImpl$readDataOrHandleCorruption$2 dataStoreImpl$readDataOrHandleCorruption$2 = new DataStoreImpl$readDataOrHandleCorruption$2(this.q, this.r, continuation);
        dataStoreImpl$readDataOrHandleCorruption$2.p = ((Boolean) obj).booleanValue();
        return dataStoreImpl$readDataOrHandleCorruption$2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x002e, code lost:
    
        if (r7 == r0) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0057  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        boolean z;
        int i;
        Object obj2;
        int i2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i3 = this.o;
        DataStoreImpl dataStoreImpl = this.q;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 == 2) {
                    obj2 = this.n;
                    ResultKt.b(obj);
                    i = ((Number) obj).intValue();
                    if (obj2 != null) {
                        i2 = obj2.hashCode();
                    } else {
                        i2 = 0;
                    }
                    return new Data(i2, i, obj2);
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = this.p;
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            z = this.p;
            this.p = z;
            this.o = 1;
            obj = dataStoreImpl.j(this);
        }
        if (z) {
            InterProcessCoordinator f = dataStoreImpl.f();
            this.n = obj;
            this.o = 2;
            Integer a = ((SingleProcessCoordinator) f).a();
            if (a != coroutineSingletons) {
                Object obj3 = obj;
                obj = a;
                obj2 = obj3;
                i = ((Number) obj).intValue();
                if (obj2 != null) {
                }
                return new Data(i2, i, obj2);
            }
            return coroutineSingletons;
        }
        Object obj4 = obj;
        i = this.r;
        obj2 = obj4;
        if (obj2 != null) {
        }
        return new Data(i2, i, obj2);
    }
}
