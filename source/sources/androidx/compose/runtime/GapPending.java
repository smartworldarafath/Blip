package androidx.compose.runtime;

import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectListKt;
import androidx.compose.runtime.collection.MultiValueMap;
import androidx.compose.runtime.composer.GroupInfo;
import androidx.compose.runtime.composer.gapbuffer.KeyInfo;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GapPending {
    public final ArrayList a;
    public final int b;
    public int c;
    public final ArrayList d;
    public final MutableIntObjectMap e;
    public final Lazy f;

    public GapPending(int i, ArrayList arrayList) {
        this.a = arrayList;
        this.b = i;
        if (i < 0) {
            PreconditionsKt.a("Invalid start index");
        }
        this.d = new ArrayList();
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap();
        int size = arrayList.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            KeyInfo keyInfo = (KeyInfo) this.a.get(i3);
            int i4 = keyInfo.c;
            int i5 = keyInfo.d;
            mutableIntObjectMap.i(i4, new GroupInfo(i3, i2, i5));
            i2 += i5;
        }
        this.e = mutableIntObjectMap;
        this.f = LazyKt.b(new Function0<MultiValueMap<Object, KeyInfo>>() { // from class: androidx.compose.runtime.GapPending$keyMap$2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                Object valueOf;
                boolean z;
                Object obj;
                ArrayList arrayList2 = GapPending.this.a;
                MutableScatterMap mutableScatterMap = new MutableScatterMap(arrayList2.size());
                int size2 = arrayList2.size();
                for (int i6 = 0; i6 < size2; i6++) {
                    KeyInfo keyInfo2 = (KeyInfo) arrayList2.get(i6);
                    Object obj2 = keyInfo2.b;
                    int i7 = keyInfo2.a;
                    if (obj2 != null) {
                        valueOf = new JoinedKey(Integer.valueOf(i7), keyInfo2.b);
                    } else {
                        valueOf = Integer.valueOf(i7);
                    }
                    int j = mutableScatterMap.j(valueOf);
                    if (j < 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        obj = null;
                    } else {
                        obj = mutableScatterMap.c[j];
                    }
                    if (obj != null) {
                        if (obj instanceof MutableObjectList) {
                            MutableObjectList mutableObjectList = (MutableObjectList) obj;
                            mutableObjectList.g(keyInfo2);
                            keyInfo2 = mutableObjectList;
                        } else {
                            Object[] objArr = ObjectListKt.a;
                            MutableObjectList mutableObjectList2 = new MutableObjectList(2);
                            mutableObjectList2.g(obj);
                            mutableObjectList2.g(keyInfo2);
                            keyInfo2 = mutableObjectList2;
                        }
                    }
                    if (z) {
                        int i8 = ~j;
                        mutableScatterMap.b[i8] = valueOf;
                        mutableScatterMap.c[i8] = keyInfo2;
                    } else {
                        mutableScatterMap.c[j] = keyInfo2;
                    }
                }
                return new MultiValueMap(mutableScatterMap);
            }
        });
    }

    public final boolean a(int i, int i2) {
        GroupInfo groupInfo;
        int i3;
        int i4;
        MutableIntObjectMap mutableIntObjectMap = this.e;
        GroupInfo groupInfo2 = (GroupInfo) mutableIntObjectMap.b(i);
        if (groupInfo2 == null) {
            return false;
        }
        int i5 = groupInfo2.b;
        int i6 = i2 - groupInfo2.c;
        groupInfo2.c = i2;
        if (i6 != 0) {
            Object[] objArr = mutableIntObjectMap.c;
            long[] jArr = mutableIntObjectMap.a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i7 = 0;
                while (true) {
                    long j = jArr[i7];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i8 = 8 - ((~(i7 - length)) >>> 31);
                        for (int i9 = 0; i9 < i8; i9++) {
                            if ((255 & j) < 128 && (i3 = (groupInfo = (GroupInfo) objArr[(i7 << 3) + i9]).b) >= i5 && groupInfo != groupInfo2 && (i4 = i3 + i6) >= 0) {
                                groupInfo.b = i4;
                            }
                            j >>= 8;
                        }
                        if (i8 != 8) {
                            return true;
                        }
                    }
                    if (i7 != length) {
                        i7++;
                    } else {
                        return true;
                    }
                }
            } else {
                return true;
            }
        } else {
            return true;
        }
    }
}
