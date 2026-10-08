package androidx.collection;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.collection.MutableOrderedSetWrapper$iterator$1$iterator$1", f = "OrderedScatterSet.kt", l = {1489}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class MutableOrderedSetWrapper$iterator$1$iterator$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<Object>, Continuation<? super Unit>, Object> {
    public MutableOrderedSetWrapper$iterator$1 l;
    public Object m;
    public long[] n;
    public int o;
    public int p;
    public /* synthetic */ Object q;
    public final /* synthetic */ MutableOrderedSetWrapper r;
    public final /* synthetic */ MutableOrderedSetWrapper$iterator$1 s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableOrderedSetWrapper$iterator$1$iterator$1(MutableOrderedSetWrapper mutableOrderedSetWrapper, MutableOrderedSetWrapper$iterator$1 mutableOrderedSetWrapper$iterator$1, Continuation continuation) {
        super(2, continuation);
        this.r = mutableOrderedSetWrapper;
        this.s = mutableOrderedSetWrapper$iterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((MutableOrderedSetWrapper$iterator$1$iterator$1) s((SequenceScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        MutableOrderedSetWrapper$iterator$1$iterator$1 mutableOrderedSetWrapper$iterator$1$iterator$1 = new MutableOrderedSetWrapper$iterator$1$iterator$1(this.r, this.s, continuation);
        mutableOrderedSetWrapper$iterator$1$iterator$1.q = obj;
        return mutableOrderedSetWrapper$iterator$1$iterator$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        SequenceScope sequenceScope;
        MutableOrderedSetWrapper mutableOrderedSetWrapper;
        long[] jArr;
        int i;
        MutableOrderedSetWrapper$iterator$1 mutableOrderedSetWrapper$iterator$1;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i2 = this.p;
        if (i2 != 0) {
            if (i2 == 1) {
                i = this.o;
                jArr = this.n;
                mutableOrderedSetWrapper = (MutableOrderedSetWrapper) this.m;
                mutableOrderedSetWrapper$iterator$1 = this.l;
                sequenceScope = (SequenceScope) this.q;
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            sequenceScope = (SequenceScope) this.q;
            mutableOrderedSetWrapper = this.r;
            MutableOrderedScatterSet mutableOrderedScatterSet = mutableOrderedSetWrapper.k;
            jArr = mutableOrderedScatterSet.c;
            i = mutableOrderedScatterSet.e;
            mutableOrderedSetWrapper$iterator$1 = this.s;
        }
        if (i != Integer.MAX_VALUE) {
            int i3 = (int) ((jArr[i] >> 31) & 2147483647L);
            mutableOrderedSetWrapper$iterator$1.j = i;
            Object obj2 = mutableOrderedSetWrapper.k.b[i];
            this.q = sequenceScope;
            this.l = mutableOrderedSetWrapper$iterator$1;
            this.m = mutableOrderedSetWrapper;
            this.n = jArr;
            this.o = i3;
            this.p = 1;
            sequenceScope.a(obj2, this);
            return coroutineSingletons;
        }
        return Unit.a;
    }
}
