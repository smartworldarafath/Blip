package androidx.recyclerview.widget;

import androidx.collection.LongSparseArray;
import androidx.collection.LongSparseArrayKt;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools$SimplePool;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.u2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ViewInfoStore {
    public final SimpleArrayMap a = new SimpleArrayMap(0);
    public final LongSparseArray b = new LongSparseArray((Object) null);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class InfoRecord {
        public static final Pools$SimplePool d = new Pools$SimplePool(20);
        public int a;
        public RecyclerView.ItemAnimator.ItemHolderInfo b;
        public RecyclerView.ItemAnimator.ItemHolderInfo c;

        /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, androidx.recyclerview.widget.ViewInfoStore$InfoRecord] */
        public static InfoRecord a() {
            InfoRecord infoRecord = (InfoRecord) d.a();
            if (infoRecord == null) {
                return new Object();
            }
            return infoRecord;
        }
    }

    public final void a(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        SimpleArrayMap simpleArrayMap = this.a;
        InfoRecord infoRecord = (InfoRecord) simpleArrayMap.get(viewHolder);
        if (infoRecord == null) {
            infoRecord = InfoRecord.a();
            simpleArrayMap.put(viewHolder, infoRecord);
        }
        infoRecord.c = itemHolderInfo;
        infoRecord.a |= 8;
    }

    public final RecyclerView.ItemAnimator.ItemHolderInfo b(RecyclerView.ViewHolder viewHolder, int i) {
        InfoRecord infoRecord;
        RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo;
        SimpleArrayMap simpleArrayMap = this.a;
        int c = simpleArrayMap.c(viewHolder);
        if (c >= 0 && (infoRecord = (InfoRecord) simpleArrayMap.h(c)) != null) {
            int i2 = infoRecord.a;
            if ((i2 & i) != 0) {
                int i3 = i2 & (~i);
                infoRecord.a = i3;
                if (i == 4) {
                    itemHolderInfo = infoRecord.b;
                } else if (i == 8) {
                    itemHolderInfo = infoRecord.c;
                } else {
                    u2.g("Must provide flag PRE or POST");
                }
                if ((i3 & 12) == 0) {
                    simpleArrayMap.f(c);
                    infoRecord.a = 0;
                    infoRecord.b = null;
                    infoRecord.c = null;
                    InfoRecord.d.b(infoRecord);
                }
                return itemHolderInfo;
            }
        }
        return null;
    }

    public final void c(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = (InfoRecord) this.a.get(viewHolder);
        if (infoRecord == null) {
            return;
        }
        infoRecord.a &= -2;
    }

    public final void d(RecyclerView.ViewHolder viewHolder) {
        LongSparseArray longSparseArray = this.b;
        int f = longSparseArray.f() - 1;
        while (true) {
            if (f < 0) {
                break;
            }
            if (viewHolder == longSparseArray.g(f)) {
                Object[] objArr = longSparseArray.l;
                Object obj = objArr[f];
                Object obj2 = LongSparseArrayKt.a;
                if (obj != obj2) {
                    objArr[f] = obj2;
                    longSparseArray.j = true;
                }
            } else {
                f--;
            }
        }
        InfoRecord infoRecord = (InfoRecord) this.a.remove(viewHolder);
        if (infoRecord != null) {
            infoRecord.a = 0;
            infoRecord.b = null;
            infoRecord.c = null;
            InfoRecord.d.b(infoRecord);
        }
    }
}
