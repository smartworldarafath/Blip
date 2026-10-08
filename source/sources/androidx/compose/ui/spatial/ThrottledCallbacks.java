package androidx.compose.ui.spatial;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import defpackage.b;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ThrottledCallbacks {
    public final MutableIntObjectMap a;
    public Entry b;
    public long c;
    public long d;
    public long e;
    public long f;
    public float[] g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class Entry {
        public final int a;
        public final AwaitFirstLayoutModifier.Node b;
        public final b c;
        public Entry d;
        public long e;
        public long f;
        public long g = Long.MIN_VALUE;

        public Entry(int i, AwaitFirstLayoutModifier.Node node, b bVar) {
            this.a = i;
            this.b = node;
            this.c = bVar;
        }

        public final void a(long j, long j2, long j3, long j4, float[] fArr) {
            RelativeLayoutBounds relativeLayoutBounds;
            RelativeLayoutBounds relativeLayoutBounds2;
            long j5 = ThrottledCallbacks.this.f;
            AwaitFirstLayoutModifier.Node node = this.b;
            NodeCoordinator e = DelegatableNodeKt.e(node, 2);
            LayoutNode g = DelegatableNodeKt.g(node);
            boolean M = g.M();
            NodeChain nodeChain = g.O;
            if (!M) {
                relativeLayoutBounds2 = null;
            } else {
                if (nodeChain.d != e) {
                    long floatToRawIntBits = (Float.floatToRawIntBits((int) (j & 4294967295L)) & 4294967295L) | (Float.floatToRawIntBits((int) (j >> 32)) << 32);
                    long j6 = e.l;
                    NodeCoordinator nodeCoordinator = nodeChain.d;
                    nodeCoordinator.getClass();
                    relativeLayoutBounds = new RelativeLayoutBounds(IntOffsetKt.b(nodeCoordinator.t(e, floatToRawIntBits)), (4294967295L & (((int) (r3 & 4294967295L)) + ((int) (j6 & 4294967295L)))) | ((((int) (r3 >> 32)) + ((int) (j6 >> 32))) << 32), j3, j4, j5, fArr, node);
                } else {
                    relativeLayoutBounds = new RelativeLayoutBounds(j, j2, j3, j4, j5, fArr, node);
                }
                relativeLayoutBounds2 = relativeLayoutBounds;
            }
            if (relativeLayoutBounds2 == null) {
                return;
            }
            this.c.b(relativeLayoutBounds2);
        }

        public final void b() {
            Entry entry;
            ThrottledCallbacks throttledCallbacks = ThrottledCallbacks.this;
            MutableIntObjectMap mutableIntObjectMap = throttledCallbacks.a;
            int i = this.a;
            Entry entry2 = (Entry) mutableIntObjectMap.g(i);
            if (entry2 != null) {
                if (entry2 != this) {
                    int d = mutableIntObjectMap.d(i);
                    Object[] objArr = mutableIntObjectMap.c;
                    Object obj = objArr[d];
                    mutableIntObjectMap.b[d] = i;
                    objArr[d] = entry2;
                    while (true) {
                        Entry entry3 = entry2.d;
                        if (entry3 == null) {
                            break;
                        }
                        if (entry3 == this) {
                            entry2.d = this.d;
                            this.d = null;
                            return;
                        }
                        entry2 = entry3;
                    }
                } else {
                    Entry entry4 = this.d;
                    this.d = null;
                    if (entry4 != null) {
                        int d2 = mutableIntObjectMap.d(i);
                        Object[] objArr2 = mutableIntObjectMap.c;
                        Object obj2 = objArr2[d2];
                        mutableIntObjectMap.b[d2] = i;
                        objArr2[d2] = entry4;
                        return;
                    }
                    LayoutNode g = DelegatableNodeKt.g(this.b.j);
                    if (g.L()) {
                        RectManager rectManager = LayoutNodeKt.a(g).getRectManager();
                        rectManager.getClass();
                        if (g.p != -4) {
                            RectList rectList = rectManager.c;
                            int e = rectManager.e(g);
                            long[] jArr = rectList.a;
                            int i2 = e + 2;
                            jArr[i2] = jArr[i2] & 8070450532247928831L;
                            return;
                        }
                        return;
                    }
                    return;
                }
            }
            Entry entry5 = throttledCallbacks.b;
            if (entry5 == this) {
                throttledCallbacks.b = entry5.d;
                this.d = null;
                return;
            }
            if (entry5 != null) {
                entry = entry5.d;
            } else {
                entry = null;
            }
            while (true) {
                Entry entry6 = entry5;
                entry5 = entry;
                if (entry5 != null) {
                    if (entry5 == this) {
                        if (entry6 != null) {
                            entry6.d = entry5.d;
                        }
                        this.d = null;
                        return;
                    }
                    entry = entry5.d;
                } else {
                    return;
                }
            }
        }
    }

    public ThrottledCallbacks() {
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.a;
        this.a = new MutableIntObjectMap();
        this.c = -1L;
        this.d = 0L;
        this.e = 0L;
    }

    public final void a(Entry entry, long j, long j2, float[] fArr, long j3) {
        boolean z;
        long j4 = entry.g;
        if (j3 - j4 <= 0 && j4 != Long.MIN_VALUE) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            entry.g = j3;
            entry.a(entry.e, entry.f, j, j2, fArr);
        }
    }

    public final boolean b(long j, long j2, float[] fArr, int i, int i2) {
        boolean z;
        if (!IntOffset.a(j2, this.d)) {
            this.d = j2;
            z = true;
        } else {
            z = false;
        }
        if (!IntOffset.a(j, this.e)) {
            this.e = j;
            z = true;
        }
        if (fArr != null) {
            this.g = fArr;
            z = true;
        }
        long j3 = (i << 32) | (i2 & 4294967295L);
        if (j3 != this.f) {
            this.f = j3;
            return true;
        }
        return z;
    }
}
