package androidx.compose.runtime.composer.gapbuffer;

import androidx.collection.MutableIntObjectMap;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.SlotStorage;
import androidx.compose.runtime.tooling.CompositionData;
import defpackage.u2;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SlotTable extends SlotStorage implements CompositionData, Iterable<Object>, KMappedMarker {
    public int k;
    public int m;
    public int n;
    public boolean p;
    public int q;
    public HashMap s;
    public MutableIntObjectMap t;
    public int[] j = new int[0];
    public Object[] l = new Object[0];
    public final Object o = new Object();
    public ArrayList r = new ArrayList();

    public final int b(GapAnchor gapAnchor) {
        if (this.p) {
            ComposerKt.a("Use active SlotWriter to determine anchor location instead");
        }
        if (!gapAnchor.a()) {
            PreconditionsKt.a("Anchor refers to a group that was removed");
        }
        return gapAnchor.a;
    }

    public final void c() {
        this.s = new HashMap();
    }

    public final SlotReader d() {
        if (!this.p) {
            this.n++;
            return new SlotReader(this);
        }
        u2.l("Cannot read while a writer is pending");
        return null;
    }

    public final SlotWriter e() {
        if (this.p) {
            ComposerKt.a("Cannot start a writer when another writer is pending");
        }
        if (this.n > 0) {
            ComposerKt.a("Cannot start a writer when a reader is pending");
        }
        this.p = true;
        this.q++;
        return new SlotWriter(this);
    }

    public final boolean f(GapAnchor gapAnchor) {
        int e;
        if (gapAnchor.a() && (e = SlotTableKt.e(this.r, gapAnchor.a, this.k)) >= 0 && Intrinsics.a(this.r.get(e), gapAnchor)) {
            return true;
        }
        return false;
    }

    public final GapGroupSourceInformation g(int i) {
        GapAnchor gapAnchor;
        int i2;
        ArrayList arrayList;
        int e;
        HashMap hashMap = this.s;
        if (hashMap != null) {
            if (this.p) {
                ComposerKt.a("use active SlotWriter to crate an anchor for location instead");
            }
            if (i >= 0 && i < (i2 = this.k) && (e = SlotTableKt.e((arrayList = this.r), i, i2)) >= 0) {
                gapAnchor = (GapAnchor) arrayList.get(e);
            } else {
                gapAnchor = null;
            }
            if (gapAnchor != null) {
                return (GapGroupSourceInformation) hashMap.get(gapAnchor);
            }
        }
        return null;
    }

    @Override // java.lang.Iterable
    public final Iterator<Object> iterator() {
        return new GroupIterator(this, 0, this.k);
    }
}
