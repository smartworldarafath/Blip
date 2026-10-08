package androidx.compose.ui.node;

import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import defpackage.c;
import java.util.HashMap;
import java.util.Map;
import kotlin.collections.MapsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AlignmentLines {
    public final AlignmentLinesOwner a;
    public boolean c;
    public boolean d;
    public boolean e;
    public boolean f;
    public boolean g;
    public AlignmentLinesOwner h;
    public boolean b = true;
    public final HashMap i = new HashMap();

    public AlignmentLines(AlignmentLinesOwner alignmentLinesOwner) {
        this.a = alignmentLinesOwner;
    }

    public final void a(AlignmentLine alignmentLine, int i, NodeCoordinator nodeCoordinator) {
        long j;
        float intBitsToFloat;
        float f = i;
        long floatToRawIntBits = Float.floatToRawIntBits(f) << 32;
        long floatToRawIntBits2 = Float.floatToRawIntBits(f) & 4294967295L;
        loop0: while (true) {
            j = floatToRawIntBits | floatToRawIntBits2;
            do {
                j = b(nodeCoordinator, j);
                nodeCoordinator = nodeCoordinator.F;
                nodeCoordinator.getClass();
                if (nodeCoordinator.equals(this.a.e())) {
                    break loop0;
                }
            } while (!c(nodeCoordinator).containsKey(alignmentLine));
            float d = d(nodeCoordinator, alignmentLine);
            long floatToRawIntBits3 = Float.floatToRawIntBits(d);
            long floatToRawIntBits4 = Float.floatToRawIntBits(d);
            floatToRawIntBits = floatToRawIntBits3 << 32;
            floatToRawIntBits2 = floatToRawIntBits4 & 4294967295L;
        }
        if (alignmentLine instanceof HorizontalAlignmentLine) {
            intBitsToFloat = Float.intBitsToFloat((int) (j & 4294967295L));
        } else {
            intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        }
        int round = Math.round(intBitsToFloat);
        HashMap hashMap = this.i;
        if (hashMap.containsKey(alignmentLine)) {
            int intValue = ((Number) MapsKt.c(alignmentLine, hashMap)).intValue();
            HorizontalAlignmentLine horizontalAlignmentLine = AlignmentLineKt.a;
            round = ((Number) alignmentLine.a.n(Integer.valueOf(intValue), Integer.valueOf(round))).intValue();
        }
        hashMap.put(alignmentLine, Integer.valueOf(round));
    }

    public abstract long b(NodeCoordinator nodeCoordinator, long j);

    public abstract Map c(NodeCoordinator nodeCoordinator);

    public abstract int d(NodeCoordinator nodeCoordinator, AlignmentLine alignmentLine);

    public final boolean e() {
        if (!this.c && !this.e && !this.f && !this.g) {
            return false;
        }
        return true;
    }

    public final boolean f() {
        i();
        if (this.h != null) {
            return true;
        }
        return false;
    }

    public final void g() {
        this.b = true;
        AlignmentLinesOwner alignmentLinesOwner = this.a;
        AlignmentLinesOwner h = alignmentLinesOwner.h();
        if (h == null) {
            return;
        }
        if (this.c) {
            h.T();
        } else if (this.e || this.d) {
            h.requestLayout();
        }
        if (this.f) {
            alignmentLinesOwner.T();
        }
        if (this.g) {
            alignmentLinesOwner.requestLayout();
        }
        h.c().g();
    }

    public final void h() {
        HashMap hashMap = this.i;
        hashMap.clear();
        c cVar = new c(2, this);
        AlignmentLinesOwner alignmentLinesOwner = this.a;
        alignmentLinesOwner.F(cVar);
        hashMap.putAll(c(alignmentLinesOwner.e()));
        this.b = false;
    }

    public final void i() {
        AlignmentLines c;
        AlignmentLines c2;
        boolean e = e();
        AlignmentLinesOwner alignmentLinesOwner = this.a;
        if (!e) {
            AlignmentLinesOwner h = alignmentLinesOwner.h();
            if (h != null) {
                alignmentLinesOwner = h.c().h;
                if (alignmentLinesOwner == null || !alignmentLinesOwner.c().e()) {
                    AlignmentLinesOwner alignmentLinesOwner2 = this.h;
                    if (alignmentLinesOwner2 != null && !alignmentLinesOwner2.c().e()) {
                        AlignmentLinesOwner h2 = alignmentLinesOwner2.h();
                        if (h2 != null && (c2 = h2.c()) != null) {
                            c2.i();
                        }
                        AlignmentLinesOwner h3 = alignmentLinesOwner2.h();
                        if (h3 != null && (c = h3.c()) != null) {
                            alignmentLinesOwner = c.h;
                        } else {
                            alignmentLinesOwner = null;
                        }
                    } else {
                        return;
                    }
                }
            } else {
                return;
            }
        }
        this.h = alignmentLinesOwner;
    }
}
