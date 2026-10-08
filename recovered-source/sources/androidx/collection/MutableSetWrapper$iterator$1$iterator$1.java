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
@DebugMetadata(c = "androidx.collection.MutableSetWrapper$iterator$1$iterator$1", f = "ScatterSet.kt", l = {1188}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class MutableSetWrapper$iterator$1$iterator$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<Object>, Continuation<? super Unit>, Object> {
    public MutableSetWrapper$iterator$1 l;
    public Object m;
    public long[] n;
    public int o;
    public int p;
    public int q;
    public int r;
    public long s;
    public int t;
    public /* synthetic */ Object u;
    public final /* synthetic */ MutableSetWrapper v;
    public final /* synthetic */ MutableSetWrapper$iterator$1 w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableSetWrapper$iterator$1$iterator$1(MutableSetWrapper mutableSetWrapper, MutableSetWrapper$iterator$1 mutableSetWrapper$iterator$1, Continuation continuation) {
        super(2, continuation);
        this.v = mutableSetWrapper;
        this.w = mutableSetWrapper$iterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((MutableSetWrapper$iterator$1$iterator$1) s((SequenceScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        MutableSetWrapper$iterator$1$iterator$1 mutableSetWrapper$iterator$1$iterator$1 = new MutableSetWrapper$iterator$1$iterator$1(this.v, this.w, continuation);
        mutableSetWrapper$iterator$1$iterator$1.u = obj;
        return mutableSetWrapper$iterator$1$iterator$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x006a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0053 -> B:14:0x00a3). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0055 -> B:6:0x0068). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x0071 -> B:5:0x0098). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        SequenceScope sequenceScope;
        MutableSetWrapper mutableSetWrapper;
        long[] jArr;
        int length;
        MutableSetWrapper$iterator$1 mutableSetWrapper$iterator$1;
        int i;
        long j;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i2 = this.t;
        if (i2 != 0) {
            if (i2 == 1) {
                int i3 = this.r;
                int i4 = this.q;
                long j2 = this.s;
                int i5 = this.p;
                int i6 = this.o;
                long[] jArr2 = this.n;
                MutableSetWrapper mutableSetWrapper2 = (MutableSetWrapper) this.m;
                MutableSetWrapper$iterator$1 mutableSetWrapper$iterator$12 = this.l;
                SequenceScope sequenceScope2 = (SequenceScope) this.u;
                ResultKt.b(obj);
                j2 >>= 8;
                i3++;
                if (i3 < i4) {
                    if (i4 == 8) {
                        length = i6;
                        jArr = jArr2;
                        mutableSetWrapper = mutableSetWrapper2;
                        sequenceScope = sequenceScope2;
                        i = i5;
                        mutableSetWrapper$iterator$1 = mutableSetWrapper$iterator$12;
                        if (i != length) {
                            i++;
                            j = jArr[i];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                sequenceScope2 = sequenceScope;
                                i3 = 0;
                                mutableSetWrapper2 = mutableSetWrapper;
                                jArr2 = jArr;
                                i4 = 8 - ((~(i - length)) >>> 31);
                                mutableSetWrapper$iterator$12 = mutableSetWrapper$iterator$1;
                                i5 = i;
                                i6 = length;
                                j2 = j;
                                if (i3 < i4) {
                                    if ((255 & j2) < 128) {
                                        int i7 = (i5 << 3) + i3;
                                        mutableSetWrapper$iterator$12.j = i7;
                                        Object obj2 = mutableSetWrapper2.k.b[i7];
                                        this.u = sequenceScope2;
                                        this.l = mutableSetWrapper$iterator$12;
                                        this.m = mutableSetWrapper2;
                                        this.n = jArr2;
                                        this.o = i6;
                                        this.p = i5;
                                        this.s = j2;
                                        this.q = i4;
                                        this.r = i3;
                                        this.t = 1;
                                        sequenceScope2.a(obj2, this);
                                        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
                                        return coroutineSingletons;
                                    }
                                    j2 >>= 8;
                                    i3++;
                                    if (i3 < i4) {
                                    }
                                }
                            }
                            if (i != length) {
                            }
                        }
                    }
                    return Unit.a;
                }
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            sequenceScope = (SequenceScope) this.u;
            mutableSetWrapper = this.v;
            jArr = mutableSetWrapper.k.a;
            length = jArr.length - 2;
            if (length >= 0) {
                mutableSetWrapper$iterator$1 = this.w;
                i = 0;
                j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                }
                if (i != length) {
                }
            }
            return Unit.a;
        }
    }
}
