package androidx.compose.runtime;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.channels.SendChannel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ SnapshotFlowManagerImpl k;

    public /* synthetic */ e(SnapshotFlowManagerImpl snapshotFlowManagerImpl, int i) {
        this.j = i;
        this.k = snapshotFlowManagerImpl;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        char c;
        char c2;
        SendChannel sendChannel;
        char c3 = 7;
        switch (this.j) {
            case 0:
                final MultiSubscriptionSnapshotFlowManager multiSubscriptionSnapshotFlowManager = (MultiSubscriptionSnapshotFlowManager) this.k;
                final Set set = (Set) obj;
                final ?? obj3 = new Object();
                synchronized (multiSubscriptionSnapshotFlowManager.a) {
                    MutableScatterMap mutableScatterMap = multiSubscriptionSnapshotFlowManager.b;
                    Function1 function1 = new Function1() { // from class: androidx.compose.runtime.f
                        @Override // kotlin.jvm.functions.Function1
                        public final Object b(Object obj4) {
                            Object e;
                            if (set.contains(obj4) && (e = multiSubscriptionSnapshotFlowManager.b.e(obj4)) != null) {
                                boolean z = e instanceof MutableScatterSet;
                                Ref$ObjectRef ref$ObjectRef = obj3;
                                if (z) {
                                    MutableScatterSet mutableScatterSet = (MutableScatterSet) e;
                                    Object[] objArr = mutableScatterSet.b;
                                    long[] jArr = mutableScatterSet.a;
                                    int length = jArr.length - 2;
                                    if (length >= 0) {
                                        int i = 0;
                                        while (true) {
                                            long j = jArr[i];
                                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                                int i2 = 8 - ((~(i - length)) >>> 31);
                                                for (int i3 = 0; i3 < i2; i3++) {
                                                    if ((255 & j) < 128) {
                                                        SendChannel sendChannel2 = (SendChannel) objArr[(i << 3) + i3];
                                                        if (ref$ObjectRef.j == null) {
                                                            ref$ObjectRef.j = new ArrayList();
                                                        }
                                                        ((List) ref$ObjectRef.j).add(sendChannel2);
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
                                } else {
                                    SendChannel sendChannel3 = (SendChannel) e;
                                    if (ref$ObjectRef.j == null) {
                                        ref$ObjectRef.j = new ArrayList();
                                    }
                                    ((List) ref$ObjectRef.j).add(sendChannel3);
                                }
                            }
                            return Unit.a;
                        }
                    };
                    TypeIntrinsics.c(1, function1);
                    Object[] objArr = mutableScatterMap.b;
                    long[] jArr = mutableScatterMap.a;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i = 0;
                        while (true) {
                            long j = jArr[i];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i2 = 8 - ((~(i - length)) >>> 31);
                                for (int i3 = 0; i3 < i2; i3++) {
                                    if ((j & 255) < 128) {
                                        function1.b(objArr[(i << 3) + i3]);
                                    }
                                    j >>= 8;
                                }
                                if (i2 != 8) {
                                }
                            }
                            if (i != length) {
                                i++;
                            }
                        }
                    }
                    List list = (List) obj3.j;
                    if (list != null) {
                        int size = list.size();
                        for (int i4 = 0; i4 < size; i4++) {
                            ((SendChannel) list.get(i4)).j(Unit.a);
                        }
                    }
                }
                return Unit.a;
            default:
                SingleSubscriptionSnapshotFlowManager singleSubscriptionSnapshotFlowManager = (SingleSubscriptionSnapshotFlowManager) this.k;
                Set set2 = (Set) obj;
                synchronized (singleSubscriptionSnapshotFlowManager.a) {
                    try {
                        MutableScatterSet mutableScatterSet = singleSubscriptionSnapshotFlowManager.d;
                        if (mutableScatterSet == null) {
                            if (CollectionsKt.n(set2, singleSubscriptionSnapshotFlowManager.b)) {
                                sendChannel = singleSubscriptionSnapshotFlowManager.f;
                            }
                            sendChannel = null;
                        } else {
                            Object[] objArr2 = mutableScatterSet.b;
                            long[] jArr2 = mutableScatterSet.a;
                            int length2 = jArr2.length - 2;
                            if (length2 >= 0) {
                                int i5 = 0;
                                while (true) {
                                    long j2 = jArr2[i5];
                                    if ((((~j2) << c3) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                        int i6 = 8 - ((~(i5 - length2)) >>> 31);
                                        int i7 = 0;
                                        while (i7 < i6) {
                                            if ((j2 & 255) < 128) {
                                                c2 = c3;
                                                if (set2.contains(objArr2[(i5 << 3) + i7])) {
                                                    sendChannel = singleSubscriptionSnapshotFlowManager.f;
                                                }
                                            } else {
                                                c2 = c3;
                                            }
                                            j2 >>= 8;
                                            i7++;
                                            c3 = c2;
                                        }
                                        c = c3;
                                        if (i6 != 8) {
                                        }
                                    } else {
                                        c = c3;
                                    }
                                    if (i5 != length2) {
                                        i5++;
                                        c3 = c;
                                    }
                                }
                            }
                            sendChannel = null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (sendChannel != null) {
                    sendChannel.j(Unit.a);
                }
                return Unit.a;
        }
    }
}
