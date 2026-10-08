package androidx.compose.runtime.snapshots;

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
@DebugMetadata(c = "androidx.compose.runtime.snapshots.SnapshotIdSet$iterator$1", f = "SnapshotIdSet.kt", l = {252, 256, 263}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class SnapshotIdSet$iterator$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Long>, Continuation<? super Unit>, Object> {
    public long[] l;
    public int m;
    public int n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ SnapshotIdSet q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnapshotIdSet$iterator$1(SnapshotIdSet snapshotIdSet, Continuation continuation) {
        super(2, continuation);
        this.q = snapshotIdSet;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((SnapshotIdSet$iterator$1) s((SequenceScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        SnapshotIdSet$iterator$1 snapshotIdSet$iterator$1 = new SnapshotIdSet$iterator$1(this.q, continuation);
        snapshotIdSet$iterator$1.p = obj;
        return snapshotIdSet$iterator$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00a5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x00c5 -> B:7:0x00c6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0082 -> B:20:0x0099). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        SequenceScope sequenceScope;
        long[] jArr;
        int length;
        int i;
        SequenceScope sequenceScope2;
        int i2;
        SequenceScope sequenceScope3;
        int i3;
        SnapshotIdSet snapshotIdSet = this.q;
        long j = snapshotIdSet.j;
        long j2 = snapshotIdSet.l;
        long j3 = snapshotIdSet.k;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i4 = this.o;
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 == 3) {
                        i3 = this.m;
                        sequenceScope3 = (SequenceScope) this.p;
                        ResultKt.b(obj);
                        i3++;
                        if (i3 < 64) {
                            if (((1 << i3) & j) != 0) {
                                Long l = new Long(j2 + i3 + 64);
                                this.p = sequenceScope3;
                                this.l = null;
                                this.m = i3;
                                this.o = 3;
                                sequenceScope3.a(l, this);
                                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
                                return coroutineSingletons;
                            }
                            i3++;
                            if (i3 < 64) {
                            }
                        }
                        return Unit.a;
                    }
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                i2 = this.m;
                sequenceScope2 = (SequenceScope) this.p;
                ResultKt.b(obj);
                i2++;
                if (i2 < 64) {
                    if ((j3 & (1 << i2)) != 0) {
                        Long l2 = new Long(j2 + i2);
                        this.p = sequenceScope2;
                        this.l = null;
                        this.m = i2;
                        this.o = 2;
                        sequenceScope2.a(l2, this);
                        CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.j;
                        return coroutineSingletons;
                    }
                    i2++;
                    if (i2 < 64) {
                    }
                } else {
                    sequenceScope = sequenceScope2;
                    if (j != 0) {
                        sequenceScope3 = sequenceScope;
                        i3 = 0;
                        if (i3 < 64) {
                        }
                    }
                    return Unit.a;
                }
            } else {
                length = this.n;
                int i5 = this.m;
                jArr = this.l;
                sequenceScope = (SequenceScope) this.p;
                ResultKt.b(obj);
                i = i5 + 1;
            }
        } else {
            ResultKt.b(obj);
            sequenceScope = (SequenceScope) this.p;
            jArr = snapshotIdSet.m;
            if (jArr != null) {
                length = jArr.length;
                i = 0;
            }
            if (j3 != 0) {
                sequenceScope2 = sequenceScope;
                i2 = 0;
                if (i2 < 64) {
                }
            }
            if (j != 0) {
            }
            return Unit.a;
        }
        if (i < length) {
            Long l3 = new Long(jArr[i]);
            this.p = sequenceScope;
            this.l = jArr;
            this.m = i;
            this.n = length;
            this.o = 1;
            sequenceScope.a(l3, this);
            return coroutineSingletons;
        }
        if (j3 != 0) {
        }
        if (j != 0) {
        }
        return Unit.a;
    }
}
