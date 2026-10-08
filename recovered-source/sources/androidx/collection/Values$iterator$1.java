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
@DebugMetadata(c = "androidx.collection.Values$iterator$1", f = "ScatterMap.kt", l = {1446}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class Values$iterator$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<Object>, Continuation<? super Unit>, Object> {
    public Object[] l;
    public long[] m;
    public int n;
    public int o;
    public int p;
    public int q;
    public long r;
    public int s;
    public /* synthetic */ Object t;
    public final /* synthetic */ Values u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Values$iterator$1(Values values, Continuation continuation) {
        super(2, continuation);
        this.u = values;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((Values$iterator$1) s((SequenceScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        Values$iterator$1 values$iterator$1 = new Values$iterator$1(this.u, continuation);
        values$iterator$1.t = obj;
        return values$iterator$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0063  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x004e -> B:14:0x0092). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0050 -> B:6:0x0061). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x006a -> B:5:0x0089). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        SequenceScope sequenceScope;
        Object[] objArr;
        long[] jArr;
        int length;
        int i;
        long j;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i2 = this.s;
        if (i2 != 0) {
            if (i2 == 1) {
                int i3 = this.q;
                int i4 = this.p;
                long j2 = this.r;
                i = this.o;
                int i5 = this.n;
                long[] jArr2 = this.m;
                Object[] objArr2 = this.l;
                SequenceScope sequenceScope2 = (SequenceScope) this.t;
                ResultKt.b(obj);
                j2 >>= 8;
                i3++;
                if (i3 < i4) {
                    if (i4 == 8) {
                        length = i5;
                        jArr = jArr2;
                        objArr = objArr2;
                        sequenceScope = sequenceScope2;
                        if (i != length) {
                            i++;
                            j = jArr[i];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                sequenceScope2 = sequenceScope;
                                i3 = 0;
                                jArr2 = jArr;
                                i5 = length;
                                i4 = 8 - ((~(i - length)) >>> 31);
                                objArr2 = objArr;
                                j2 = j;
                                if (i3 < i4) {
                                    if ((255 & j2) < 128) {
                                        Object obj2 = objArr2[(i << 3) + i3];
                                        this.t = sequenceScope2;
                                        this.l = objArr2;
                                        this.m = jArr2;
                                        this.n = i5;
                                        this.o = i;
                                        this.r = j2;
                                        this.p = i4;
                                        this.q = i3;
                                        this.s = 1;
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
            sequenceScope = (SequenceScope) this.t;
            ScatterMap scatterMap = this.u.j;
            objArr = scatterMap.c;
            jArr = scatterMap.a;
            length = jArr.length - 2;
            if (length >= 0) {
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
