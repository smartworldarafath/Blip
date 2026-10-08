package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSetKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import defpackage.r1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import kotlin.collections.CollectionsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyLayoutItemAnimator<T extends LazyLayoutMeasuredItem> {
    public final MutableScatterMap a;
    public LazyLayoutKeyIndexMap b;
    public int c;
    public final MutableScatterSet d;
    public final ArrayList e;
    public final ArrayList f;
    public final ArrayList g;
    public final ArrayList h;
    public final ArrayList i;
    public DrawModifierNode j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ItemInfo {
        public Constraints b;
        public int c;
        public int d;
        public int f;
        public int g;
        public LazyLayoutItemAnimation[] a = LazyLayoutItemAnimatorKt.a;
        public int e = 1;

        public ItemInfo() {
        }

        public static void b(ItemInfo itemInfo, LazyLayoutMeasuredItem lazyLayoutMeasuredItem, CoroutineScope coroutineScope, GraphicsContext graphicsContext, int i, int i2) {
            LazyLayoutItemAnimator.this.getClass();
            itemInfo.a(lazyLayoutMeasuredItem, coroutineScope, graphicsContext, i, i2, (int) (lazyLayoutMeasuredItem.f(0) >> 32));
        }

        public final void a(LazyLayoutMeasuredItem lazyLayoutMeasuredItem, CoroutineScope coroutineScope, GraphicsContext graphicsContext, int i, int i2, int i3) {
            LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr;
            LazyLayoutAnimationSpecsNode lazyLayoutAnimationSpecsNode;
            LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr2 = this.a;
            int length = lazyLayoutItemAnimationArr2.length;
            int i4 = 0;
            while (true) {
                if (i4 < length) {
                    LazyLayoutItemAnimation lazyLayoutItemAnimation = lazyLayoutItemAnimationArr2[i4];
                    if (lazyLayoutItemAnimation != null && lazyLayoutItemAnimation.e) {
                        break;
                    } else {
                        i4++;
                    }
                } else {
                    this.f = i;
                    this.g = i2;
                    break;
                }
            }
            int size = lazyLayoutMeasuredItem.d().size();
            int length2 = this.a.length;
            while (true) {
                lazyLayoutItemAnimationArr = this.a;
                if (size >= length2) {
                    break;
                }
                LazyLayoutItemAnimation lazyLayoutItemAnimation2 = lazyLayoutItemAnimationArr[size];
                if (lazyLayoutItemAnimation2 != null) {
                    lazyLayoutItemAnimation2.d();
                }
                size++;
            }
            if (lazyLayoutItemAnimationArr.length != lazyLayoutMeasuredItem.d().size()) {
                this.a = (LazyLayoutItemAnimation[]) Arrays.copyOf(this.a, lazyLayoutMeasuredItem.d().size());
            }
            this.b = new Constraints(lazyLayoutMeasuredItem.a());
            this.c = i3;
            this.d = lazyLayoutMeasuredItem.g();
            this.e = lazyLayoutMeasuredItem.b();
            int size2 = lazyLayoutMeasuredItem.d().size();
            for (int i5 = 0; i5 < size2; i5++) {
                Object a = ((Placeable) lazyLayoutMeasuredItem.d().get(i5)).a();
                if (a instanceof LazyLayoutAnimationSpecsNode) {
                    lazyLayoutAnimationSpecsNode = (LazyLayoutAnimationSpecsNode) a;
                } else {
                    lazyLayoutAnimationSpecsNode = null;
                }
                LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr3 = this.a;
                if (lazyLayoutAnimationSpecsNode == null) {
                    LazyLayoutItemAnimation lazyLayoutItemAnimation3 = lazyLayoutItemAnimationArr3[i5];
                    if (lazyLayoutItemAnimation3 != null) {
                        lazyLayoutItemAnimation3.d();
                    }
                    this.a[i5] = null;
                } else {
                    LazyLayoutItemAnimation lazyLayoutItemAnimation4 = lazyLayoutItemAnimationArr3[i5];
                    if (lazyLayoutItemAnimation4 == null) {
                        lazyLayoutItemAnimation4 = new LazyLayoutItemAnimation(coroutineScope, graphicsContext, new r1(27, LazyLayoutItemAnimator.this));
                        this.a[i5] = lazyLayoutItemAnimation4;
                    }
                    lazyLayoutItemAnimation4.d = lazyLayoutAnimationSpecsNode.x;
                }
            }
        }
    }

    public LazyLayoutItemAnimator() {
        long[] jArr = ScatterMapKt.a;
        this.a = new MutableScatterMap();
        MutableScatterSet mutableScatterSet = ScatterSetKt.a;
        this.d = new MutableScatterSet();
        this.e = new ArrayList();
        this.f = new ArrayList();
        this.g = new ArrayList();
        this.h = new ArrayList();
        this.i = new ArrayList();
    }

    public static void c(LazyLayoutMeasuredItem lazyLayoutMeasuredItem, int i, ItemInfo itemInfo) {
        int i2;
        int i3 = 0;
        long f = lazyLayoutMeasuredItem.f(0);
        if (true & true) {
            i2 = (int) (f >> 32);
        } else {
            i2 = 0;
        }
        if ((1 & 2) != 0) {
            i = (int) (f & 4294967295L);
        }
        long j = (i2 << 32) | (i & 4294967295L);
        LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr = itemInfo.a;
        int length = lazyLayoutItemAnimationArr.length;
        int i4 = 0;
        while (i3 < length) {
            LazyLayoutItemAnimation lazyLayoutItemAnimation = lazyLayoutItemAnimationArr[i3];
            int i5 = i4 + 1;
            if (lazyLayoutItemAnimation != null) {
                lazyLayoutItemAnimation.j = IntOffset.c(j, IntOffset.b(lazyLayoutMeasuredItem.f(i4), f));
            }
            i3++;
            i4 = i5;
        }
    }

    public static int h(int[] iArr, LazyLayoutMeasuredItem lazyLayoutMeasuredItem) {
        int g = lazyLayoutMeasuredItem.g();
        int b = lazyLayoutMeasuredItem.b() + g;
        int i = 0;
        while (g < b) {
            int e = lazyLayoutMeasuredItem.e() + lazyLayoutMeasuredItem.c() + iArr[g];
            iArr[g] = e;
            i = Math.max(i, e);
            g++;
        }
        return i;
    }

    public final LazyLayoutItemAnimation a(int i, Object obj) {
        ItemInfo itemInfo = (ItemInfo) this.a.e(obj);
        if (itemInfo != null) {
            return itemInfo.a[i];
        }
        return null;
    }

    public final long b() {
        ArrayList arrayList = this.i;
        int size = arrayList.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            LazyLayoutItemAnimation lazyLayoutItemAnimation = (LazyLayoutItemAnimation) arrayList.get(i);
            GraphicsLayer graphicsLayer = lazyLayoutItemAnimation.m;
            if (graphicsLayer != null) {
                j = (Math.max((int) (j & 4294967295L), ((int) (lazyLayoutItemAnimation.j & 4294967295L)) + ((int) (graphicsLayer.u & 4294967295L))) & 4294967295L) | (Math.max((int) (j >> 32), ((int) (lazyLayoutItemAnimation.j >> 32)) + ((int) (graphicsLayer.u >> 32))) << 32);
            }
        }
        return j;
    }

    public final void d(int i, int i2, int i3, ArrayList arrayList, LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap, LazyLayoutMeasuredItemProvider lazyLayoutMeasuredItemProvider, boolean z, int i4, boolean z2, int i5, int i6, CoroutineScope coroutineScope, GraphicsContext graphicsContext) {
        MutableScatterMap mutableScatterMap;
        Object obj;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        MutableScatterSet mutableScatterSet;
        ArrayList arrayList5;
        ArrayList arrayList6;
        int i7;
        int i8;
        final LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap2;
        int i9;
        Object[] objArr;
        ArrayList arrayList7;
        Object[] objArr2;
        ArrayList arrayList8;
        long j;
        int i10;
        MutableScatterSet mutableScatterSet2;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z3;
        int i15;
        boolean z4;
        long j2;
        final LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap3 = this.b;
        this.b = lazyLayoutKeyIndexMap;
        int size = arrayList.size();
        int i16 = 0;
        loop0: while (true) {
            mutableScatterMap = this.a;
            if (i16 < size) {
                LazyLayoutMeasuredItem lazyLayoutMeasuredItem = (LazyLayoutMeasuredItem) arrayList.get(i16);
                int size2 = lazyLayoutMeasuredItem.d().size();
                for (int i17 = 0; i17 < size2; i17++) {
                    Object a = ((Placeable) lazyLayoutMeasuredItem.d().get(i17)).a();
                    obj = null;
                    if ((a instanceof LazyLayoutAnimationSpecsNode ? (LazyLayoutAnimationSpecsNode) a : null) != null) {
                        break loop0;
                    }
                }
                i16++;
            } else {
                obj = null;
                if (mutableScatterMap.f()) {
                    e();
                    return;
                }
            }
        }
        int i18 = this.c;
        LazyLayoutMeasuredItem lazyLayoutMeasuredItem2 = (LazyLayoutMeasuredItem) CollectionsKt.t(arrayList);
        this.c = lazyLayoutMeasuredItem2 != null ? lazyLayoutMeasuredItem2.getIndex() : 0;
        long j3 = i & 4294967295L;
        boolean z5 = z || !z2;
        Object[] objArr3 = mutableScatterMap.b;
        long[] jArr = mutableScatterMap.a;
        int length = jArr.length - 2;
        MutableScatterSet mutableScatterSet3 = this.d;
        if (length >= 0) {
            int i19 = 0;
            while (true) {
                long j4 = jArr[i19];
                if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i20 = 8 - ((~(i19 - length)) >>> 31);
                    for (int i21 = 0; i21 < i20; i21++) {
                        if ((j4 & 255) < 128) {
                            j2 = j4;
                            mutableScatterSet3.d(objArr3[(i19 << 3) + i21]);
                        } else {
                            j2 = j4;
                        }
                        j4 = j2 >> 8;
                    }
                    if (i20 != 8) {
                        break;
                    }
                }
                if (i19 == length) {
                    break;
                } else {
                    i19++;
                }
            }
        }
        int size3 = arrayList.size();
        int i22 = 0;
        while (true) {
            arrayList2 = this.i;
            arrayList3 = this.f;
            arrayList4 = this.e;
            if (i22 >= size3) {
                break;
            }
            LazyLayoutMeasuredItem lazyLayoutMeasuredItem3 = (LazyLayoutMeasuredItem) arrayList.get(i22);
            mutableScatterSet3.m(lazyLayoutMeasuredItem3.getKey());
            int size4 = lazyLayoutMeasuredItem3.d().size();
            int i23 = 0;
            while (true) {
                if (i23 < size4) {
                    i13 = size3;
                    Object a2 = ((Placeable) lazyLayoutMeasuredItem3.d().get(i23)).a();
                    i14 = i22;
                    if ((a2 instanceof LazyLayoutAnimationSpecsNode ? (LazyLayoutAnimationSpecsNode) a2 : obj) != null) {
                        ItemInfo itemInfo = (ItemInfo) mutableScatterMap.e(lazyLayoutMeasuredItem3.getKey());
                        int a3 = lazyLayoutKeyIndexMap3 != null ? ((NearestRangeKeyIndexMap) lazyLayoutKeyIndexMap3).a(lazyLayoutMeasuredItem3.getKey()) : -1;
                        boolean z6 = a3 == -1 && lazyLayoutKeyIndexMap3 != null;
                        if (itemInfo == null) {
                            ItemInfo itemInfo2 = new ItemInfo();
                            ItemInfo.b(itemInfo2, lazyLayoutMeasuredItem3, coroutineScope, graphicsContext, i5, i6);
                            mutableScatterMap.o(lazyLayoutMeasuredItem3.getKey(), itemInfo2);
                            if (lazyLayoutMeasuredItem3.getIndex() == a3 || a3 == -1) {
                                c(lazyLayoutMeasuredItem3, (int) (lazyLayoutMeasuredItem3.f(0) & 4294967295L), itemInfo2);
                                if (z6) {
                                    LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr = itemInfo2.a;
                                    for (LazyLayoutItemAnimation lazyLayoutItemAnimation : lazyLayoutItemAnimationArr) {
                                        if (lazyLayoutItemAnimation != null) {
                                            lazyLayoutItemAnimation.a();
                                        }
                                    }
                                }
                            } else if (a3 < i18) {
                                arrayList4.add(lazyLayoutMeasuredItem3);
                            } else {
                                arrayList3.add(lazyLayoutMeasuredItem3);
                            }
                        } else if (z5) {
                            ItemInfo.b(itemInfo, lazyLayoutMeasuredItem3, coroutineScope, graphicsContext, i5, i6);
                            LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr2 = itemInfo.a;
                            int length2 = lazyLayoutItemAnimationArr2.length;
                            int i24 = 0;
                            while (i24 < length2) {
                                boolean z7 = z6;
                                LazyLayoutItemAnimation lazyLayoutItemAnimation2 = lazyLayoutItemAnimationArr2[i24];
                                LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr3 = lazyLayoutItemAnimationArr2;
                                int i25 = length2;
                                if (lazyLayoutItemAnimation2 != null) {
                                    i15 = i24;
                                    z4 = z5;
                                    if (!IntOffset.a(lazyLayoutItemAnimation2.j, 9223372034707292159L)) {
                                        lazyLayoutItemAnimation2.j = IntOffset.c(lazyLayoutItemAnimation2.j, j3);
                                    }
                                } else {
                                    i15 = i24;
                                    z4 = z5;
                                }
                                i24 = i15 + 1;
                                z6 = z7;
                                lazyLayoutItemAnimationArr2 = lazyLayoutItemAnimationArr3;
                                length2 = i25;
                                z5 = z4;
                            }
                            z3 = z5;
                            if (z6) {
                                for (LazyLayoutItemAnimation lazyLayoutItemAnimation3 : itemInfo.a) {
                                    if (lazyLayoutItemAnimation3 != null) {
                                        if (lazyLayoutItemAnimation3.c()) {
                                            arrayList2.remove(lazyLayoutItemAnimation3);
                                            DrawModifierNode drawModifierNode = this.j;
                                            if (drawModifierNode != null) {
                                                DrawModifierNodeKt.a(drawModifierNode);
                                            }
                                        }
                                        lazyLayoutItemAnimation3.a();
                                    }
                                }
                            }
                            g(lazyLayoutMeasuredItem3, false);
                        }
                        z3 = z5;
                    } else {
                        i23++;
                        size3 = i13;
                        i22 = i14;
                    }
                } else {
                    i13 = size3;
                    i14 = i22;
                    z3 = z5;
                    f(lazyLayoutMeasuredItem3.getKey());
                    break;
                }
            }
            i22 = i14 + 1;
            z5 = z3;
            size3 = i13;
        }
        boolean z8 = z5;
        int[] iArr = new int[i4];
        if (z8 && lazyLayoutKeyIndexMap3 != null) {
            if (!arrayList4.isEmpty()) {
                if (arrayList4.size() > 1) {
                    CollectionsKt.P(arrayList4, new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$1
                        @Override // java.util.Comparator
                        public final int compare(Object obj2, Object obj3) {
                            Object key = ((LazyLayoutMeasuredItem) obj3).getKey();
                            NearestRangeKeyIndexMap nearestRangeKeyIndexMap = (NearestRangeKeyIndexMap) LazyLayoutKeyIndexMap.this;
                            return Integer.valueOf(nearestRangeKeyIndexMap.a(key)).compareTo(Integer.valueOf(nearestRangeKeyIndexMap.a(((LazyLayoutMeasuredItem) obj2).getKey())));
                        }
                    });
                }
                int size5 = arrayList4.size();
                for (int i26 = 0; i26 < size5; i26++) {
                    LazyLayoutMeasuredItem lazyLayoutMeasuredItem4 = (LazyLayoutMeasuredItem) arrayList4.get(i26);
                    int h = i5 - h(iArr, lazyLayoutMeasuredItem4);
                    Object e = mutableScatterMap.e(lazyLayoutMeasuredItem4.getKey());
                    e.getClass();
                    c(lazyLayoutMeasuredItem4, h, (ItemInfo) e);
                    g(lazyLayoutMeasuredItem4, false);
                }
                Arrays.fill(iArr, 0, i4, 0);
            }
            if (!arrayList3.isEmpty()) {
                if (arrayList3.size() > 1) {
                    CollectionsKt.P(arrayList3, new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1
                        @Override // java.util.Comparator
                        public final int compare(Object obj2, Object obj3) {
                            Object key = ((LazyLayoutMeasuredItem) obj2).getKey();
                            NearestRangeKeyIndexMap nearestRangeKeyIndexMap = (NearestRangeKeyIndexMap) LazyLayoutKeyIndexMap.this;
                            return Integer.valueOf(nearestRangeKeyIndexMap.a(key)).compareTo(Integer.valueOf(nearestRangeKeyIndexMap.a(((LazyLayoutMeasuredItem) obj3).getKey())));
                        }
                    });
                }
                int size6 = arrayList3.size();
                for (int i27 = 0; i27 < size6; i27++) {
                    LazyLayoutMeasuredItem lazyLayoutMeasuredItem5 = (LazyLayoutMeasuredItem) arrayList3.get(i27);
                    int h2 = (h(iArr, lazyLayoutMeasuredItem5) + i6) - (lazyLayoutMeasuredItem5.e() + lazyLayoutMeasuredItem5.c());
                    Object e2 = mutableScatterMap.e(lazyLayoutMeasuredItem5.getKey());
                    e2.getClass();
                    c(lazyLayoutMeasuredItem5, h2, (ItemInfo) e2);
                    g(lazyLayoutMeasuredItem5, false);
                }
                Arrays.fill(iArr, 0, i4, 0);
            }
        }
        Object[] objArr4 = mutableScatterSet3.b;
        long[] jArr2 = mutableScatterSet3.a;
        int length3 = jArr2.length - 2;
        ArrayList arrayList9 = this.h;
        ArrayList arrayList10 = this.g;
        if (length3 >= 0) {
            int i28 = 0;
            while (true) {
                long j5 = jArr2[i28];
                arrayList5 = arrayList3;
                arrayList6 = arrayList4;
                if ((((~j5) << 7) & j5 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i29 = 8 - ((~(i28 - length3)) >>> 31);
                    int i30 = 0;
                    while (i30 < i29) {
                        if ((j5 & 255) < 128) {
                            objArr2 = objArr4;
                            Object obj2 = objArr2[(i28 << 3) + i30];
                            j = j5;
                            ItemInfo itemInfo3 = (ItemInfo) mutableScatterMap.e(obj2);
                            if (itemInfo3 == null) {
                                arrayList8 = arrayList2;
                            } else {
                                int a4 = ((NearestRangeKeyIndexMap) lazyLayoutKeyIndexMap).a(obj2);
                                mutableScatterSet2 = mutableScatterSet3;
                                int min = Math.min(i4, itemInfo3.e);
                                itemInfo3.e = min;
                                i10 = i30;
                                itemInfo3.d = Math.min(i4 - min, itemInfo3.d);
                                if (a4 == -1) {
                                    LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr4 = itemInfo3.a;
                                    int length4 = lazyLayoutItemAnimationArr4.length;
                                    int i31 = 0;
                                    boolean z9 = false;
                                    int i32 = 0;
                                    while (i31 < length4) {
                                        LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr5 = lazyLayoutItemAnimationArr4;
                                        LazyLayoutItemAnimation lazyLayoutItemAnimation4 = lazyLayoutItemAnimationArr5[i31];
                                        int i33 = i32 + 1;
                                        if (lazyLayoutItemAnimation4 != null) {
                                            if (lazyLayoutItemAnimation4.c()) {
                                                i12 = i31;
                                            } else {
                                                i12 = i31;
                                                if (((Boolean) ((SnapshotMutableStateImpl) lazyLayoutItemAnimation4.i).getValue()).booleanValue()) {
                                                    lazyLayoutItemAnimation4.d();
                                                    itemInfo3.a[i32] = obj;
                                                    arrayList2.remove(lazyLayoutItemAnimation4);
                                                    DrawModifierNode drawModifierNode2 = this.j;
                                                    if (drawModifierNode2 != null) {
                                                        DrawModifierNodeKt.a(drawModifierNode2);
                                                    }
                                                } else {
                                                    if (lazyLayoutItemAnimation4.m != null) {
                                                        lazyLayoutItemAnimation4.c();
                                                    }
                                                    if (lazyLayoutItemAnimation4.c()) {
                                                        arrayList2.add(lazyLayoutItemAnimation4);
                                                        DrawModifierNode drawModifierNode3 = this.j;
                                                        if (drawModifierNode3 != null) {
                                                            DrawModifierNodeKt.a(drawModifierNode3);
                                                        }
                                                    } else {
                                                        lazyLayoutItemAnimation4.d();
                                                        itemInfo3.a[i32] = obj;
                                                    }
                                                }
                                            }
                                            z9 = true;
                                        } else {
                                            i12 = i31;
                                        }
                                        i31 = i12 + 1;
                                        lazyLayoutItemAnimationArr4 = lazyLayoutItemAnimationArr5;
                                        i32 = i33;
                                    }
                                    if (!z9) {
                                        f(obj2);
                                    }
                                    arrayList8 = arrayList2;
                                } else {
                                    Constraints constraints = itemInfo3.b;
                                    constraints.getClass();
                                    arrayList8 = arrayList2;
                                    LazyLayoutMeasuredItem a5 = lazyLayoutMeasuredItemProvider.a(a4, itemInfo3.d, itemInfo3.e, constraints.a);
                                    a5.h();
                                    LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr6 = itemInfo3.a;
                                    int length5 = lazyLayoutItemAnimationArr6.length;
                                    int i34 = 0;
                                    while (true) {
                                        if (i34 < length5) {
                                            LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr7 = lazyLayoutItemAnimationArr6;
                                            LazyLayoutItemAnimation lazyLayoutItemAnimation5 = lazyLayoutItemAnimationArr7[i34];
                                            if (lazyLayoutItemAnimation5 != null) {
                                                i11 = length5;
                                                if (((Boolean) ((SnapshotMutableStateImpl) lazyLayoutItemAnimation5.f).getValue()).booleanValue()) {
                                                    break;
                                                }
                                            } else {
                                                i11 = length5;
                                            }
                                            i34++;
                                            lazyLayoutItemAnimationArr6 = lazyLayoutItemAnimationArr7;
                                            length5 = i11;
                                        } else if (lazyLayoutKeyIndexMap3 != null && a4 == ((NearestRangeKeyIndexMap) lazyLayoutKeyIndexMap3).a(obj2)) {
                                            f(obj2);
                                        }
                                    }
                                    itemInfo3.a(a5, coroutineScope, graphicsContext, i5, i6, itemInfo3.c);
                                    if (a4 < this.c) {
                                        arrayList10.add(a5);
                                    } else {
                                        arrayList9.add(a5);
                                    }
                                }
                                j5 = j >> 8;
                                i30 = i10 + 1;
                                mutableScatterSet3 = mutableScatterSet2;
                                objArr4 = objArr2;
                                arrayList2 = arrayList8;
                            }
                        } else {
                            objArr2 = objArr4;
                            arrayList8 = arrayList2;
                            j = j5;
                        }
                        mutableScatterSet2 = mutableScatterSet3;
                        i10 = i30;
                        j5 = j >> 8;
                        i30 = i10 + 1;
                        mutableScatterSet3 = mutableScatterSet2;
                        objArr4 = objArr2;
                        arrayList2 = arrayList8;
                    }
                    objArr = objArr4;
                    arrayList7 = arrayList2;
                    mutableScatterSet = mutableScatterSet3;
                    if (i29 != 8) {
                        break;
                    }
                } else {
                    objArr = objArr4;
                    arrayList7 = arrayList2;
                    mutableScatterSet = mutableScatterSet3;
                }
                if (i28 == length3) {
                    break;
                }
                i28++;
                arrayList3 = arrayList5;
                arrayList4 = arrayList6;
                mutableScatterSet3 = mutableScatterSet;
                objArr4 = objArr;
                arrayList2 = arrayList7;
            }
        } else {
            mutableScatterSet = mutableScatterSet3;
            arrayList5 = arrayList3;
            arrayList6 = arrayList4;
        }
        if (arrayList10.isEmpty()) {
            i7 = i2;
            i8 = i3;
            lazyLayoutKeyIndexMap2 = lazyLayoutKeyIndexMap;
        } else {
            if (arrayList10.size() > 1) {
                lazyLayoutKeyIndexMap2 = lazyLayoutKeyIndexMap;
                CollectionsKt.P(arrayList10, new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$2
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        Object key = ((LazyLayoutMeasuredItem) obj4).getKey();
                        NearestRangeKeyIndexMap nearestRangeKeyIndexMap = (NearestRangeKeyIndexMap) LazyLayoutKeyIndexMap.this;
                        return Integer.valueOf(nearestRangeKeyIndexMap.a(key)).compareTo(Integer.valueOf(nearestRangeKeyIndexMap.a(((LazyLayoutMeasuredItem) obj3).getKey())));
                    }
                });
            } else {
                lazyLayoutKeyIndexMap2 = lazyLayoutKeyIndexMap;
            }
            int size7 = arrayList10.size();
            for (int i35 = 0; i35 < size7; i35++) {
                LazyLayoutMeasuredItem lazyLayoutMeasuredItem6 = (LazyLayoutMeasuredItem) arrayList10.get(i35);
                Object e3 = mutableScatterMap.e(lazyLayoutMeasuredItem6.getKey());
                e3.getClass();
                ItemInfo itemInfo4 = (ItemInfo) e3;
                int h3 = h(iArr, lazyLayoutMeasuredItem6);
                if (z) {
                    i9 = (int) (((LazyLayoutMeasuredItem) CollectionsKt.s(arrayList)).f(0) & 4294967295L);
                } else {
                    i9 = itemInfo4.f;
                }
                lazyLayoutMeasuredItem6.i(i9 - h3, itemInfo4.c, i2, i3);
                if (z8) {
                    g(lazyLayoutMeasuredItem6, true);
                }
            }
            i7 = i2;
            i8 = i3;
            Arrays.fill(iArr, 0, i4, 0);
        }
        if (!arrayList9.isEmpty()) {
            if (arrayList9.size() > 1) {
                CollectionsKt.P(arrayList9, new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$2
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        Object key = ((LazyLayoutMeasuredItem) obj3).getKey();
                        NearestRangeKeyIndexMap nearestRangeKeyIndexMap = (NearestRangeKeyIndexMap) LazyLayoutKeyIndexMap.this;
                        return Integer.valueOf(nearestRangeKeyIndexMap.a(key)).compareTo(Integer.valueOf(nearestRangeKeyIndexMap.a(((LazyLayoutMeasuredItem) obj4).getKey())));
                    }
                });
            }
            int size8 = arrayList9.size();
            for (int i36 = 0; i36 < size8; i36++) {
                LazyLayoutMeasuredItem lazyLayoutMeasuredItem7 = (LazyLayoutMeasuredItem) arrayList9.get(i36);
                Object e4 = mutableScatterMap.e(lazyLayoutMeasuredItem7.getKey());
                e4.getClass();
                ItemInfo itemInfo5 = (ItemInfo) e4;
                lazyLayoutMeasuredItem7.i((itemInfo5.g - (lazyLayoutMeasuredItem7.e() + lazyLayoutMeasuredItem7.c())) + h(iArr, lazyLayoutMeasuredItem7), itemInfo5.c, i7, i8);
                if (z8) {
                    g(lazyLayoutMeasuredItem7, true);
                }
            }
        }
        Collections.reverse(arrayList10);
        arrayList.addAll(0, arrayList10);
        arrayList.addAll(arrayList9);
        arrayList6.clear();
        arrayList5.clear();
        arrayList10.clear();
        arrayList9.clear();
        mutableScatterSet.f();
    }

    public final void e() {
        MutableScatterMap mutableScatterMap = this.a;
        if (mutableScatterMap.g()) {
            Object[] objArr = mutableScatterMap.c;
            long[] jArr = mutableScatterMap.a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                for (LazyLayoutItemAnimation lazyLayoutItemAnimation : ((ItemInfo) objArr[(i << 3) + i3]).a) {
                                    if (lazyLayoutItemAnimation != null) {
                                        lazyLayoutItemAnimation.d();
                                    }
                                }
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        }
                    }
                    if (i == length) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
            mutableScatterMap.h();
        }
    }

    public final void f(Object obj) {
        ItemInfo itemInfo = (ItemInfo) this.a.m(obj);
        if (itemInfo != null) {
            for (LazyLayoutItemAnimation lazyLayoutItemAnimation : itemInfo.a) {
                if (lazyLayoutItemAnimation != null) {
                    lazyLayoutItemAnimation.d();
                }
            }
        }
    }

    public final void g(LazyLayoutMeasuredItem lazyLayoutMeasuredItem, boolean z) {
        Object e = this.a.e(lazyLayoutMeasuredItem.getKey());
        e.getClass();
        LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr = ((ItemInfo) e).a;
        int length = lazyLayoutItemAnimationArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            LazyLayoutItemAnimation lazyLayoutItemAnimation = lazyLayoutItemAnimationArr[i];
            int i3 = i2 + 1;
            if (lazyLayoutItemAnimation != null) {
                long f = lazyLayoutMeasuredItem.f(i2);
                long j = lazyLayoutItemAnimation.j;
                if (!IntOffset.a(j, 9223372034707292159L) && !IntOffset.a(j, f)) {
                    long b = IntOffset.b(f, j);
                    FiniteAnimationSpec finiteAnimationSpec = lazyLayoutItemAnimation.d;
                    if (finiteAnimationSpec != null) {
                        long b2 = IntOffset.b(((IntOffset) ((SnapshotMutableStateImpl) lazyLayoutItemAnimation.p).getValue()).a, b);
                        lazyLayoutItemAnimation.f(b2);
                        lazyLayoutItemAnimation.e(true);
                        lazyLayoutItemAnimation.e = z;
                        BuildersKt.c(lazyLayoutItemAnimation.a, null, null, new LazyLayoutItemAnimation$animatePlacementDelta$1(lazyLayoutItemAnimation, finiteAnimationSpec, b2, null), 3);
                    }
                }
                lazyLayoutItemAnimation.j = f;
            }
            i++;
            i2 = i3;
        }
    }
}
