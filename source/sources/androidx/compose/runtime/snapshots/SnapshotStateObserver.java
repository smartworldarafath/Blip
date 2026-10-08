package androidx.compose.runtime.snapshots;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectIntMap;
import androidx.collection.ScatterSet;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.DerivedState;
import androidx.compose.runtime.DerivedStateObserver;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.SnapshotMutationPolicy;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.internal.Thread_jvmKt;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import defpackage.d;
import defpackage.f7;
import defpackage.p;
import defpackage.wc;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SnapshotStateObserver {
    public final Function1 a;
    public boolean c;
    public p h;
    public ObservedScopeMap i;
    public final AtomicReference b = new AtomicReference(null);
    public final d d = new d(22, this);
    public final a e = new Function1() { // from class: androidx.compose.runtime.snapshots.a
        @Override // kotlin.jvm.functions.Function1
        public final Object b(Object obj) {
            SnapshotStateObserver snapshotStateObserver = SnapshotStateObserver.this;
            synchronized (snapshotStateObserver.g) {
                SnapshotStateObserver.ObservedScopeMap observedScopeMap = snapshotStateObserver.i;
                observedScopeMap.getClass();
                Object obj2 = observedScopeMap.b;
                obj2.getClass();
                int i = observedScopeMap.d;
                MutableObjectIntMap mutableObjectIntMap = observedScopeMap.c;
                if (mutableObjectIntMap == null) {
                    mutableObjectIntMap = new MutableObjectIntMap();
                    observedScopeMap.c = mutableObjectIntMap;
                    observedScopeMap.f.o(obj2, mutableObjectIntMap);
                }
                observedScopeMap.b(obj, i, obj2, mutableObjectIntMap);
            }
            return Unit.a;
        }
    };
    public final MutableVector f = new MutableVector(new ObservedScopeMap[16]);
    public final Object g = new Object();
    public long j = -1;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ObservedScopeMap {
        public final Function1 a;
        public Object b;
        public MutableObjectIntMap c;
        public boolean j;
        public int k;
        public int d = -1;
        public final MutableScatterMap e = ScopeMap.b();
        public final MutableScatterMap f = new MutableScatterMap();
        public final MutableScatterSet g = new MutableScatterSet();
        public final MutableVector h = new MutableVector(new DerivedState[16]);
        public final SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1 i = new DerivedStateObserver() { // from class: androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1
            @Override // androidx.compose.runtime.DerivedStateObserver
            public final void a() {
                SnapshotStateObserver.ObservedScopeMap observedScopeMap = SnapshotStateObserver.ObservedScopeMap.this;
                observedScopeMap.k--;
            }

            @Override // androidx.compose.runtime.DerivedStateObserver
            public final void start() {
                SnapshotStateObserver.ObservedScopeMap.this.k++;
            }
        };
        public final MutableScatterMap l = ScopeMap.b();
        public final HashMap m = new HashMap();

        /* JADX WARN: Type inference failed for: r2v6, types: [androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1] */
        public ObservedScopeMap(Function1 function1) {
            this.a = function1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x005f, code lost:
        
            if (((androidx.compose.runtime.snapshots.StateObjectImpl) r14).h(2) == false) goto L133;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean a(Set set) {
            char c;
            long j;
            boolean z;
            Iterator it;
            ObservedScopeMap observedScopeMap;
            int i;
            ObservedScopeMap observedScopeMap2;
            boolean z2;
            boolean z3;
            Object[] objArr;
            Iterator it2;
            int i2;
            Object[] objArr2;
            long j2;
            boolean z4;
            int i3;
            int i4;
            int i5;
            Object[] objArr3;
            int i6;
            int i7;
            MutableObjectIntMap mutableObjectIntMap;
            long[] jArr;
            Object[] objArr4;
            int i8;
            long[] jArr2;
            Object[] objArr5;
            int i9;
            int i10;
            long j3;
            int i11;
            int i12;
            Object[] objArr6;
            int i13;
            long j4;
            Object[] objArr7;
            int i14;
            int i15;
            long j5;
            ObservedScopeMap observedScopeMap3 = this;
            boolean z5 = set instanceof ScatterSetWrapper;
            MutableVector mutableVector = observedScopeMap3.h;
            MutableScatterMap mutableScatterMap = observedScopeMap3.l;
            HashMap hashMap = observedScopeMap3.m;
            MutableScatterMap mutableScatterMap2 = observedScopeMap3.e;
            MutableScatterSet mutableScatterSet = observedScopeMap3.g;
            if (z5) {
                ScatterSet scatterSet = ((ScatterSetWrapper) set).j;
                Object[] objArr8 = scatterSet.b;
                long[] jArr3 = scatterSet.a;
                int length = jArr3.length - 2;
                if (length >= 0) {
                    int i16 = 0;
                    c = 7;
                    z = false;
                    j = -9187201950435737472L;
                    while (true) {
                        long j6 = jArr3[i16];
                        int i17 = 8;
                        if ((((~j6) << 7) & j6 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i18 = 8 - ((~(i16 - length)) >>> 31);
                            int i19 = 0;
                            while (i19 < i18) {
                                if ((j6 & 255) < 128) {
                                    Object obj = objArr8[(i16 << 3) + i19];
                                    if (obj instanceof StateObjectImpl) {
                                        jArr2 = jArr3;
                                    } else {
                                        jArr2 = jArr3;
                                    }
                                    if (!observedScopeMap3.j && mutableScatterMap.c(obj)) {
                                        observedScopeMap3.j = true;
                                        try {
                                            Object e = mutableScatterMap.e(obj);
                                            if (e != null) {
                                                if (e instanceof MutableScatterSet) {
                                                    MutableScatterSet mutableScatterSet2 = (MutableScatterSet) e;
                                                    Object[] objArr9 = mutableScatterSet2.b;
                                                    long[] jArr4 = mutableScatterSet2.a;
                                                    objArr5 = objArr8;
                                                    int length2 = jArr4.length - 2;
                                                    if (length2 >= 0) {
                                                        j3 = j6;
                                                        int i20 = 0;
                                                        Object[] objArr10 = objArr9;
                                                        while (true) {
                                                            long j7 = jArr4[i20];
                                                            i9 = length;
                                                            i10 = i16;
                                                            if ((((~j7) << 7) & j7 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                                int i21 = 8 - ((~(i20 - length2)) >>> 31);
                                                                int i22 = 0;
                                                                while (i22 < i21) {
                                                                    if ((j7 & 255) < 128) {
                                                                        i13 = i22;
                                                                        DerivedState derivedState = (DerivedState) objArr10[(i20 << 3) + i22];
                                                                        derivedState.getClass();
                                                                        j4 = j7;
                                                                        Object obj2 = hashMap.get(derivedState);
                                                                        SnapshotMutationPolicy a = derivedState.a();
                                                                        if (a == null) {
                                                                            a = SnapshotStateKt.m();
                                                                        }
                                                                        objArr7 = objArr10;
                                                                        if (!a.a(derivedState.g().f, obj2)) {
                                                                            Object e2 = mutableScatterMap2.e(derivedState);
                                                                            if (e2 != null) {
                                                                                if (e2 instanceof MutableScatterSet) {
                                                                                    MutableScatterSet mutableScatterSet3 = (MutableScatterSet) e2;
                                                                                    Object[] objArr11 = mutableScatterSet3.b;
                                                                                    long[] jArr5 = mutableScatterSet3.a;
                                                                                    int length3 = jArr5.length - 2;
                                                                                    if (length3 >= 0) {
                                                                                        int i23 = 0;
                                                                                        while (true) {
                                                                                            long j8 = jArr5[i23];
                                                                                            i14 = i18;
                                                                                            i15 = i19;
                                                                                            if ((((~j8) << 7) & j8 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                                                                int i24 = 8 - ((~(i23 - length3)) >>> 31);
                                                                                                for (int i25 = 0; i25 < i24; i25++) {
                                                                                                    if ((j8 & 255) < 128) {
                                                                                                        j5 = j8;
                                                                                                        mutableScatterSet.d(objArr11[(i23 << 3) + i25]);
                                                                                                        z = true;
                                                                                                    } else {
                                                                                                        j5 = j8;
                                                                                                    }
                                                                                                    j8 = j5 >> i17;
                                                                                                }
                                                                                                if (i24 != i17) {
                                                                                                    break;
                                                                                                }
                                                                                            }
                                                                                            if (i23 == length3) {
                                                                                                break;
                                                                                            }
                                                                                            i23++;
                                                                                            i18 = i14;
                                                                                            i19 = i15;
                                                                                            i17 = 8;
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    i14 = i18;
                                                                                    i15 = i19;
                                                                                    mutableScatterSet.d(e2);
                                                                                    z = true;
                                                                                }
                                                                            }
                                                                        } else {
                                                                            i14 = i18;
                                                                            i15 = i19;
                                                                            mutableVector.b(derivedState);
                                                                        }
                                                                        j7 = j4 >> 8;
                                                                        i17 = 8;
                                                                        i22 = i13 + 1;
                                                                        objArr10 = objArr7;
                                                                        i18 = i14;
                                                                        i19 = i15;
                                                                    } else {
                                                                        i13 = i22;
                                                                        j4 = j7;
                                                                        objArr7 = objArr10;
                                                                    }
                                                                    i14 = i18;
                                                                    i15 = i19;
                                                                    j7 = j4 >> 8;
                                                                    i17 = 8;
                                                                    i22 = i13 + 1;
                                                                    objArr10 = objArr7;
                                                                    i18 = i14;
                                                                    i19 = i15;
                                                                }
                                                                objArr6 = objArr10;
                                                                i11 = i18;
                                                                i12 = i19;
                                                                if (i21 != i17) {
                                                                    break;
                                                                }
                                                            } else {
                                                                objArr6 = objArr10;
                                                                i11 = i18;
                                                                i12 = i19;
                                                            }
                                                            if (i20 == length2) {
                                                                break;
                                                            }
                                                            i20++;
                                                            length = i9;
                                                            i16 = i10;
                                                            objArr10 = objArr6;
                                                            i18 = i11;
                                                            i19 = i12;
                                                            i17 = 8;
                                                        }
                                                    }
                                                } else {
                                                    objArr5 = objArr8;
                                                    i9 = length;
                                                    i10 = i16;
                                                    j3 = j6;
                                                    i11 = i18;
                                                    i12 = i19;
                                                    DerivedState derivedState2 = (DerivedState) e;
                                                    Object obj3 = hashMap.get(derivedState2);
                                                    SnapshotMutationPolicy a2 = derivedState2.a();
                                                    if (a2 == null) {
                                                        a2 = SnapshotStateKt.m();
                                                    }
                                                    if (!a2.a(derivedState2.g().f, obj3)) {
                                                        Object e3 = mutableScatterMap2.e(derivedState2);
                                                        if (e3 != null) {
                                                            if (e3 instanceof MutableScatterSet) {
                                                                MutableScatterSet mutableScatterSet4 = (MutableScatterSet) e3;
                                                                Object[] objArr12 = mutableScatterSet4.b;
                                                                long[] jArr6 = mutableScatterSet4.a;
                                                                int length4 = jArr6.length - 2;
                                                                if (length4 >= 0) {
                                                                    int i26 = 0;
                                                                    while (true) {
                                                                        long j9 = jArr6[i26];
                                                                        if ((((~j9) << 7) & j9 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                                            int i27 = 8 - ((~(i26 - length4)) >>> 31);
                                                                            for (int i28 = 0; i28 < i27; i28++) {
                                                                                if ((j9 & 255) < 128) {
                                                                                    mutableScatterSet.d(objArr12[(i26 << 3) + i28]);
                                                                                    z = true;
                                                                                }
                                                                                j9 >>= 8;
                                                                            }
                                                                            if (i27 != 8) {
                                                                                break;
                                                                            }
                                                                        }
                                                                        if (i26 == length4) {
                                                                            break;
                                                                        }
                                                                        i26++;
                                                                    }
                                                                }
                                                            } else {
                                                                mutableScatterSet.d(e3);
                                                                z = true;
                                                            }
                                                        }
                                                    } else {
                                                        mutableVector.b(derivedState2);
                                                    }
                                                }
                                            } else {
                                                objArr5 = objArr8;
                                            }
                                            i9 = length;
                                            i10 = i16;
                                            j3 = j6;
                                            i11 = i18;
                                            i12 = i19;
                                        } finally {
                                            observedScopeMap3.j = false;
                                        }
                                    } else {
                                        objArr5 = objArr8;
                                        i9 = length;
                                        i10 = i16;
                                        j3 = j6;
                                        i11 = i18;
                                        i12 = i19;
                                    }
                                    Object e4 = mutableScatterMap2.e(obj);
                                    if (e4 != null) {
                                        if (e4 instanceof MutableScatterSet) {
                                            MutableScatterSet mutableScatterSet5 = (MutableScatterSet) e4;
                                            Object[] objArr13 = mutableScatterSet5.b;
                                            long[] jArr7 = mutableScatterSet5.a;
                                            int length5 = jArr7.length - 2;
                                            if (length5 >= 0) {
                                                int i29 = 0;
                                                while (true) {
                                                    long j10 = jArr7[i29];
                                                    if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                        int i30 = 8 - ((~(i29 - length5)) >>> 31);
                                                        long j11 = j10;
                                                        for (int i31 = 0; i31 < i30; i31++) {
                                                            if ((j11 & 255) < 128) {
                                                                mutableScatterSet.d(objArr13[(i29 << 3) + i31]);
                                                                z = true;
                                                            }
                                                            j11 >>= 8;
                                                        }
                                                        if (i30 != 8) {
                                                            break;
                                                        }
                                                    }
                                                    if (i29 == length5) {
                                                        break;
                                                    }
                                                    i29++;
                                                }
                                            }
                                        } else {
                                            mutableScatterSet.d(e4);
                                            z = true;
                                        }
                                    }
                                    j6 = j3 >> 8;
                                    i19 = i12 + 1;
                                    jArr3 = jArr2;
                                    i17 = 8;
                                    objArr8 = objArr5;
                                    length = i9;
                                    i16 = i10;
                                    i18 = i11;
                                } else {
                                    jArr2 = jArr3;
                                }
                                objArr5 = objArr8;
                                i9 = length;
                                i10 = i16;
                                j3 = j6;
                                i11 = i18;
                                i12 = i19;
                                j6 = j3 >> 8;
                                i19 = i12 + 1;
                                jArr3 = jArr2;
                                i17 = 8;
                                objArr8 = objArr5;
                                length = i9;
                                i16 = i10;
                                i18 = i11;
                            }
                            jArr = jArr3;
                            objArr4 = objArr8;
                            int i32 = length;
                            int i33 = i16;
                            if (i18 != i17) {
                                break;
                            }
                            length = i32;
                            i8 = i33;
                        } else {
                            jArr = jArr3;
                            objArr4 = objArr8;
                            i8 = i16;
                        }
                        if (i8 == length) {
                            break;
                        }
                        i16 = i8 + 1;
                        jArr3 = jArr;
                        objArr8 = objArr4;
                    }
                } else {
                    c = 7;
                    j = -9187201950435737472L;
                    z = false;
                }
            } else {
                c = 7;
                j = -9187201950435737472L;
                Iterator it3 = set.iterator();
                boolean z6 = false;
                while (it3.hasNext()) {
                    Object next = it3.next();
                    if ((next instanceof StateObjectImpl) && !((StateObjectImpl) next).h(2)) {
                        it = it3;
                        observedScopeMap = observedScopeMap3;
                    } else {
                        if (!observedScopeMap3.j && mutableScatterMap.c(next)) {
                            observedScopeMap3.j = true;
                            try {
                                Object e5 = mutableScatterMap.e(next);
                                if (e5 != null) {
                                    try {
                                        if (e5 instanceof MutableScatterSet) {
                                            MutableScatterSet mutableScatterSet6 = (MutableScatterSet) e5;
                                            Object[] objArr14 = mutableScatterSet6.b;
                                            long[] jArr8 = mutableScatterSet6.a;
                                            int length6 = jArr8.length - 2;
                                            if (length6 >= 0) {
                                                boolean z7 = z6;
                                                int i34 = 0;
                                                while (true) {
                                                    long j12 = jArr8[i34];
                                                    long[] jArr9 = jArr8;
                                                    if ((((~j12) << 7) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                        int i35 = 8 - ((~(i34 - length6)) >>> 31);
                                                        int i36 = 0;
                                                        while (i36 < i35) {
                                                            if ((j12 & 255) < 128) {
                                                                it2 = it3;
                                                                DerivedState derivedState3 = (DerivedState) objArr14[(i34 << 3) + i36];
                                                                derivedState3.getClass();
                                                                i2 = i36;
                                                                Object obj4 = hashMap.get(derivedState3);
                                                                SnapshotMutationPolicy a3 = derivedState3.a();
                                                                if (a3 == null) {
                                                                    a3 = SnapshotStateKt.m();
                                                                }
                                                                objArr2 = objArr14;
                                                                SnapshotMutationPolicy snapshotMutationPolicy = a3;
                                                                boolean z8 = z7;
                                                                if (!snapshotMutationPolicy.a(derivedState3.g().f, obj4)) {
                                                                    Object e6 = mutableScatterMap2.e(derivedState3);
                                                                    if (e6 != null) {
                                                                        if (e6 instanceof MutableScatterSet) {
                                                                            MutableScatterSet mutableScatterSet7 = (MutableScatterSet) e6;
                                                                            Object[] objArr15 = mutableScatterSet7.b;
                                                                            long[] jArr10 = mutableScatterSet7.a;
                                                                            int length7 = jArr10.length - 2;
                                                                            j2 = j12;
                                                                            if (length7 >= 0) {
                                                                                int i37 = 0;
                                                                                while (true) {
                                                                                    long j13 = jArr10[i37];
                                                                                    long[] jArr11 = jArr10;
                                                                                    if ((((~j13) << 7) & j13 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                                                        int i38 = 8 - ((~(i37 - length7)) >>> 31);
                                                                                        for (int i39 = 0; i39 < i38; i39 = i3 + 1) {
                                                                                            if ((j13 & 255) < 128) {
                                                                                                i3 = i39;
                                                                                                mutableScatterSet.d(objArr15[(i37 << 3) + i39]);
                                                                                                z8 = true;
                                                                                            } else {
                                                                                                i3 = i39;
                                                                                            }
                                                                                            j13 >>= 8;
                                                                                        }
                                                                                        if (i38 != 8) {
                                                                                            break;
                                                                                        }
                                                                                    }
                                                                                    if (i37 == length7) {
                                                                                        break;
                                                                                    }
                                                                                    i37++;
                                                                                    jArr10 = jArr11;
                                                                                }
                                                                            }
                                                                            z4 = z8;
                                                                        } else {
                                                                            j2 = j12;
                                                                            mutableScatterSet.d(e6);
                                                                            z4 = true;
                                                                        }
                                                                        z7 = z4;
                                                                    } else {
                                                                        j2 = j12;
                                                                    }
                                                                    z4 = z8;
                                                                    z7 = z4;
                                                                } else {
                                                                    j2 = j12;
                                                                    mutableVector.b(derivedState3);
                                                                    z7 = z8;
                                                                }
                                                            } else {
                                                                it2 = it3;
                                                                i2 = i36;
                                                                objArr2 = objArr14;
                                                                j2 = j12;
                                                            }
                                                            i36 = i2 + 1;
                                                            j12 = j2 >> 8;
                                                            objArr14 = objArr2;
                                                            it3 = it2;
                                                        }
                                                        it = it3;
                                                        objArr = objArr14;
                                                        boolean z9 = z7;
                                                        if (i35 == 8) {
                                                            z7 = z9;
                                                        } else {
                                                            z6 = z9;
                                                            break;
                                                        }
                                                    } else {
                                                        it = it3;
                                                        objArr = objArr14;
                                                    }
                                                    if (i34 != length6) {
                                                        i34++;
                                                        it3 = it;
                                                        jArr8 = jArr9;
                                                        objArr14 = objArr;
                                                    } else {
                                                        z6 = z7;
                                                        break;
                                                    }
                                                }
                                            }
                                        } else {
                                            it = it3;
                                            DerivedState derivedState4 = (DerivedState) e5;
                                            Object obj5 = hashMap.get(derivedState4);
                                            SnapshotMutationPolicy a4 = derivedState4.a();
                                            if (a4 == null) {
                                                a4 = SnapshotStateKt.m();
                                            }
                                            if (!a4.a(derivedState4.g().f, obj5)) {
                                                Object e7 = mutableScatterMap2.e(derivedState4);
                                                if (e7 != null) {
                                                    if (e7 instanceof MutableScatterSet) {
                                                        MutableScatterSet mutableScatterSet8 = (MutableScatterSet) e7;
                                                        Object[] objArr16 = mutableScatterSet8.b;
                                                        long[] jArr12 = mutableScatterSet8.a;
                                                        int length8 = jArr12.length - 2;
                                                        if (length8 >= 0) {
                                                            boolean z10 = z6;
                                                            int i40 = 0;
                                                            while (true) {
                                                                long j14 = jArr12[i40];
                                                                if ((((~j14) << 7) & j14 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                                    int i41 = 8 - ((~(i40 - length8)) >>> 31);
                                                                    long j15 = j14;
                                                                    for (int i42 = 0; i42 < i41; i42++) {
                                                                        if ((j15 & 255) < 128) {
                                                                            mutableScatterSet.d(objArr16[(i40 << 3) + i42]);
                                                                            z10 = true;
                                                                        }
                                                                        j15 >>= 8;
                                                                    }
                                                                    if (i41 != 8) {
                                                                        z3 = z10;
                                                                        break;
                                                                    }
                                                                }
                                                                if (i40 != length8) {
                                                                    i40++;
                                                                } else {
                                                                    z6 = z10;
                                                                    break;
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        mutableScatterSet.d(e7);
                                                        z3 = true;
                                                    }
                                                    z6 = z3;
                                                }
                                                z3 = z6;
                                                z6 = z3;
                                            } else {
                                                mutableVector.b(derivedState4);
                                            }
                                        }
                                        i = 0;
                                        observedScopeMap = this;
                                        observedScopeMap.j = false;
                                    } catch (Throwable th) {
                                        th = th;
                                        z2 = false;
                                        observedScopeMap2 = this;
                                        observedScopeMap2.j = z2;
                                        throw th;
                                    }
                                }
                                it = it3;
                                i = 0;
                                observedScopeMap = this;
                                observedScopeMap.j = false;
                            } catch (Throwable th2) {
                                th = th2;
                                observedScopeMap2 = observedScopeMap3;
                                z2 = false;
                            }
                        } else {
                            it = it3;
                            observedScopeMap = observedScopeMap3;
                            i = 0;
                        }
                        boolean z11 = z6;
                        Object e8 = mutableScatterMap2.e(next);
                        if (e8 != null) {
                            if (e8 instanceof MutableScatterSet) {
                                MutableScatterSet mutableScatterSet9 = (MutableScatterSet) e8;
                                Object[] objArr17 = mutableScatterSet9.b;
                                long[] jArr13 = mutableScatterSet9.a;
                                int length9 = jArr13.length - 2;
                                if (length9 >= 0) {
                                    int i43 = i;
                                    while (true) {
                                        long j16 = jArr13[i43];
                                        if ((((~j16) << 7) & j16 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i44 = 8 - ((~(i43 - length9)) >>> 31);
                                            long j17 = j16;
                                            for (int i45 = i; i45 < i44; i45++) {
                                                if ((j17 & 255) < 128) {
                                                    mutableScatterSet.d(objArr17[(i43 << 3) + i45]);
                                                    z11 = true;
                                                }
                                                j17 >>= 8;
                                            }
                                            if (i44 != 8) {
                                                break;
                                            }
                                        }
                                        if (i43 == length9) {
                                            break;
                                        }
                                        i43++;
                                    }
                                }
                            } else {
                                mutableScatterSet.d(e8);
                                z11 = true;
                            }
                        }
                        z6 = z11;
                    }
                    it3 = it;
                    observedScopeMap3 = observedScopeMap;
                }
                z = z6;
            }
            ObservedScopeMap observedScopeMap4 = observedScopeMap3;
            int i46 = 0;
            if (!observedScopeMap4.j && (i4 = mutableVector.l) != 0) {
                Object[] objArr18 = mutableVector.j;
                int i47 = 0;
                while (i47 < i4) {
                    DerivedState derivedState5 = (DerivedState) objArr18[i47];
                    int hashCode = Long.hashCode(SnapshotKt.i().g());
                    Object e9 = mutableScatterMap2.e(derivedState5);
                    if (e9 != null) {
                        boolean z12 = e9 instanceof MutableScatterSet;
                        MutableScatterMap mutableScatterMap3 = observedScopeMap4.f;
                        if (z12) {
                            MutableScatterSet mutableScatterSet10 = (MutableScatterSet) e9;
                            Object[] objArr19 = mutableScatterSet10.b;
                            long[] jArr14 = mutableScatterSet10.a;
                            int length10 = jArr14.length - 2;
                            if (length10 >= 0) {
                                int i48 = i46;
                                while (true) {
                                    long j18 = jArr14[i48];
                                    objArr3 = objArr18;
                                    if ((((~j18) << c) & j18 & j) != j) {
                                        int i49 = 8 - ((~(i48 - length10)) >>> 31);
                                        int i50 = 0;
                                        while (i50 < i49) {
                                            if ((j18 & 255) < 128) {
                                                i6 = i4;
                                                Object obj6 = objArr19[(i48 << 3) + i50];
                                                MutableObjectIntMap mutableObjectIntMap2 = (MutableObjectIntMap) mutableScatterMap3.e(obj6);
                                                i7 = i50;
                                                if (mutableObjectIntMap2 == null) {
                                                    mutableObjectIntMap = new MutableObjectIntMap();
                                                    mutableScatterMap3.o(obj6, mutableObjectIntMap);
                                                } else {
                                                    mutableObjectIntMap = mutableObjectIntMap2;
                                                }
                                                observedScopeMap4.b(derivedState5, hashCode, obj6, mutableObjectIntMap);
                                            } else {
                                                i6 = i4;
                                                i7 = i50;
                                            }
                                            j18 >>= 8;
                                            i50 = i7 + 1;
                                            i4 = i6;
                                        }
                                        i5 = i4;
                                        if (i49 != 8) {
                                            break;
                                        }
                                    } else {
                                        i5 = i4;
                                    }
                                    if (i48 != length10) {
                                        i48++;
                                        objArr18 = objArr3;
                                        i4 = i5;
                                    }
                                }
                            } else {
                                i5 = i4;
                                objArr3 = objArr18;
                            }
                        } else {
                            i5 = i4;
                            objArr3 = objArr18;
                            MutableObjectIntMap mutableObjectIntMap3 = (MutableObjectIntMap) mutableScatterMap3.e(e9);
                            if (mutableObjectIntMap3 == null) {
                                mutableObjectIntMap3 = new MutableObjectIntMap();
                                mutableScatterMap3.o(e9, mutableObjectIntMap3);
                            }
                            observedScopeMap4.b(derivedState5, hashCode, e9, mutableObjectIntMap3);
                        }
                    } else {
                        i5 = i4;
                        objArr3 = objArr18;
                    }
                    i47++;
                    objArr18 = objArr3;
                    i4 = i5;
                    i46 = 0;
                }
                mutableVector.g();
            }
            return z;
        }

        public final void b(Object obj, int i, Object obj2, MutableObjectIntMap mutableObjectIntMap) {
            int i2;
            if (this.k <= 0) {
                int d = mutableObjectIntMap.d(obj);
                if (d < 0) {
                    d = ~d;
                    i2 = -1;
                } else {
                    i2 = mutableObjectIntMap.c[d];
                }
                mutableObjectIntMap.b[d] = obj;
                mutableObjectIntMap.c[d] = i;
                if ((obj instanceof DerivedState) && i2 != i) {
                    DerivedSnapshotState.ResultRecord g = ((DerivedState) obj).g();
                    this.m.put(obj, g.f);
                    ObjectIntMap objectIntMap = g.e;
                    MutableScatterMap mutableScatterMap = this.l;
                    ScopeMap.d(mutableScatterMap, obj);
                    Object[] objArr = objectIntMap.b;
                    long[] jArr = objectIntMap.a;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i3 = 0;
                        while (true) {
                            long j = jArr[i3];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i4 = 8 - ((~(i3 - length)) >>> 31);
                                for (int i5 = 0; i5 < i4; i5++) {
                                    if ((j & 255) < 128) {
                                        StateObject stateObject = (StateObject) objArr[(i3 << 3) + i5];
                                        if (stateObject instanceof StateObjectImpl) {
                                            ((StateObjectImpl) stateObject).i(2);
                                        }
                                        ScopeMap.a(mutableScatterMap, stateObject, obj);
                                    }
                                    j >>= 8;
                                }
                                if (i4 != 8) {
                                    break;
                                }
                            }
                            if (i3 == length) {
                                break;
                            } else {
                                i3++;
                            }
                        }
                    }
                }
                if (i2 == -1) {
                    if (obj instanceof StateObjectImpl) {
                        ((StateObjectImpl) obj).i(2);
                    }
                    ScopeMap.a(this.e, obj, obj2);
                }
            }
        }

        public final void c(Object obj, Object obj2) {
            MutableScatterMap mutableScatterMap = this.e;
            ScopeMap.c(mutableScatterMap, obj2, obj);
            if ((obj2 instanceof DerivedState) && !mutableScatterMap.c(obj2)) {
                ScopeMap.d(this.l, obj2);
                this.m.remove(obj2);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x00b2  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void d(wc wcVar) {
            long[] jArr;
            long[] jArr2;
            long j;
            char c;
            long j2;
            int i;
            long j3;
            MutableScatterMap mutableScatterMap = this.f;
            long[] jArr3 = mutableScatterMap.a;
            int length = jArr3.length - 2;
            if (length >= 0) {
                int i2 = 0;
                while (true) {
                    long j4 = jArr3[i2];
                    char c2 = 7;
                    long j5 = -9187201950435737472L;
                    if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i3 = 8;
                        int i4 = 8 - ((~(i2 - length)) >>> 31);
                        int i5 = 0;
                        while (i5 < i4) {
                            if ((j4 & 255) < 128) {
                                int i6 = (i2 << 3) + i5;
                                c = c2;
                                Object obj = mutableScatterMap.b[i6];
                                j2 = j5;
                                MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) mutableScatterMap.c[i6];
                                Boolean bool = (Boolean) wcVar.b(obj);
                                if (bool.booleanValue()) {
                                    Object[] objArr = mutableObjectIntMap.b;
                                    int[] iArr = mutableObjectIntMap.c;
                                    long[] jArr4 = mutableObjectIntMap.a;
                                    int i7 = i3;
                                    int length2 = jArr4.length - 2;
                                    if (length2 >= 0) {
                                        jArr2 = jArr3;
                                        j = j4;
                                        int i8 = 0;
                                        while (true) {
                                            long j6 = jArr4[i8];
                                            long[] jArr5 = jArr4;
                                            if ((((~j6) << c) & j6 & j2) != j2) {
                                                int i9 = 8 - ((~(i8 - length2)) >>> 31);
                                                for (int i10 = 0; i10 < i9; i10++) {
                                                    if ((j6 & 255) < 128) {
                                                        int i11 = (i8 << 3) + i10;
                                                        j3 = j6;
                                                        Object obj2 = objArr[i11];
                                                        int i12 = iArr[i11];
                                                        c(obj, obj2);
                                                    } else {
                                                        j3 = j6;
                                                    }
                                                    j6 = j3 >> i7;
                                                }
                                                if (i9 != i7) {
                                                    break;
                                                }
                                            }
                                            if (i8 == length2) {
                                                break;
                                            }
                                            i8++;
                                            jArr4 = jArr5;
                                            i7 = 8;
                                        }
                                        if (bool.booleanValue()) {
                                            mutableScatterMap.n(i6);
                                        }
                                        i = 8;
                                    }
                                }
                                jArr2 = jArr3;
                                j = j4;
                                if (bool.booleanValue()) {
                                }
                                i = 8;
                            } else {
                                jArr2 = jArr3;
                                j = j4;
                                c = c2;
                                j2 = j5;
                                i = i3;
                            }
                            i5++;
                            i3 = i;
                            j4 = j >> i;
                            c2 = c;
                            j5 = j2;
                            jArr3 = jArr2;
                        }
                        jArr = jArr3;
                        if (i4 != i3) {
                            return;
                        }
                    } else {
                        jArr = jArr3;
                    }
                    if (i2 != length) {
                        i2++;
                        jArr3 = jArr;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.compose.runtime.snapshots.a] */
    public SnapshotStateObserver(Function1 function1) {
        this.a = function1;
    }

    public final void a() {
        synchronized (this.g) {
            MutableVector mutableVector = this.f;
            Object[] objArr = mutableVector.j;
            int i = mutableVector.l;
            for (int i2 = 0; i2 < i; i2++) {
                ObservedScopeMap observedScopeMap = (ObservedScopeMap) objArr[i2];
                observedScopeMap.e.h();
                observedScopeMap.f.h();
                observedScopeMap.l.h();
                observedScopeMap.m.clear();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0080 A[Catch: all -> 0x008e, TryCatch #0 {all -> 0x008e, blocks: (B:4:0x0007, B:8:0x0011, B:11:0x0078, B:13:0x0080, B:15:0x0090, B:17:0x0085, B:20:0x0021, B:23:0x002d, B:25:0x0041, B:27:0x004f, B:29:0x0059, B:31:0x0069, B:39:0x0074, B:42:0x0094), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(Object obj) {
        int i;
        int i2;
        synchronized (this.g) {
            try {
                MutableVector mutableVector = this.f;
                int i3 = mutableVector.l;
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    Object[] objArr = mutableVector.j;
                    if (i4 < i3) {
                        ObservedScopeMap observedScopeMap = (ObservedScopeMap) objArr[i4];
                        MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) observedScopeMap.f.m(obj);
                        if (mutableObjectIntMap != null) {
                            Object[] objArr2 = mutableObjectIntMap.b;
                            int[] iArr = mutableObjectIntMap.c;
                            long[] jArr = mutableObjectIntMap.a;
                            int length = jArr.length - 2;
                            if (length >= 0) {
                                int i6 = 0;
                                while (true) {
                                    long j = jArr[i6];
                                    i = i4;
                                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                        int i7 = 8 - ((~(i6 - length)) >>> 31);
                                        int i8 = 0;
                                        while (i8 < i7) {
                                            if ((j & 255) < 128) {
                                                int i9 = (i6 << 3) + i8;
                                                i2 = i8;
                                                Object obj2 = objArr2[i9];
                                                int i10 = iArr[i9];
                                                observedScopeMap.c(obj, obj2);
                                            } else {
                                                i2 = i8;
                                            }
                                            j >>= 8;
                                            i8 = i2 + 1;
                                        }
                                        if (i7 != 8) {
                                            break;
                                        }
                                    }
                                    if (i6 == length) {
                                        break;
                                    }
                                    i6++;
                                    i4 = i;
                                }
                                if (observedScopeMap.f.g()) {
                                    i5++;
                                } else if (i5 > 0) {
                                    Object[] objArr3 = mutableVector.j;
                                    objArr3[i - i5] = objArr3[i];
                                }
                                i4 = i + 1;
                            }
                        }
                        i = i4;
                        if (observedScopeMap.f.g()) {
                        }
                        i4 = i + 1;
                    } else {
                        int i11 = i3 - i5;
                        Arrays.fill(objArr, i11, i3, (Object) null);
                        mutableVector.l = i11;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(wc wcVar) {
        synchronized (this.g) {
            try {
                MutableVector mutableVector = this.f;
                int i = mutableVector.l;
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    Object[] objArr = mutableVector.j;
                    if (i2 < i) {
                        ObservedScopeMap observedScopeMap = (ObservedScopeMap) objArr[i2];
                        observedScopeMap.d(wcVar);
                        if (!observedScopeMap.f.g()) {
                            i3++;
                        } else if (i3 > 0) {
                            Object[] objArr2 = mutableVector.j;
                            objArr2[i2 - i3] = objArr2[i2];
                        }
                        i2++;
                    } else {
                        int i4 = i - i3;
                        Arrays.fill(objArr, i4, i, (Object) null);
                        mutableVector.l = i4;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean d() {
        boolean z;
        Set set;
        Set set2;
        synchronized (this.g) {
            z = this.c;
        }
        if (z) {
            return false;
        }
        boolean z2 = false;
        while (true) {
            AtomicReference atomicReference = this.b;
            while (true) {
                Object obj = atomicReference.get();
                set = null;
                List list = null;
                List list2 = null;
                if (obj == null) {
                    break;
                }
                if (obj instanceof Set) {
                    set2 = (Set) obj;
                } else if (obj instanceof List) {
                    List list3 = (List) obj;
                    Set set3 = (Set) list3.get(0);
                    if (list3.size() == 2) {
                        list2 = list3.get(1);
                    } else if (list3.size() > 2) {
                        list2 = list3.subList(1, list3.size());
                    }
                    set2 = set3;
                    list = list2;
                } else {
                    ComposerKt.b("Unexpected notification");
                    f7.h();
                    return false;
                }
                while (!atomicReference.compareAndSet(obj, list)) {
                    if (atomicReference.get() != obj) {
                        break;
                    }
                }
                set = set2;
                break;
            }
            if (set == null) {
                return z2;
            }
            synchronized (this.g) {
                MutableVector mutableVector = this.f;
                Object[] objArr = mutableVector.j;
                int i = mutableVector.l;
                for (int i2 = 0; i2 < i; i2++) {
                    if (!((ObservedScopeMap) objArr[i2]).a(set) && !z2) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01ef A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0222 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e(Object obj, Function1 function1, Function0 function0) {
        MutableVector mutableVector;
        Object obj2;
        ObservedScopeMap observedScopeMap;
        boolean z;
        ObservedScopeMap observedScopeMap2;
        long j;
        long j2;
        ObservedScopeMap observedScopeMap3;
        Snapshot transparentObserverMutableSnapshot;
        MutableSnapshot mutableSnapshot;
        long j3;
        MutableObjectIntMap mutableObjectIntMap;
        int i;
        long j4;
        MutableObjectIntMap mutableObjectIntMap2;
        boolean z2;
        long a = Thread_jvmKt.a();
        synchronized (this.g) {
            mutableVector = this.f;
            Object[] objArr = mutableVector.j;
            int i2 = mutableVector.l;
            int i3 = 0;
            while (true) {
                if (i3 < i2) {
                    obj2 = objArr[i3];
                    if (((ObservedScopeMap) obj2).a == function1) {
                        break;
                    } else {
                        i3++;
                    }
                } else {
                    obj2 = null;
                    break;
                }
            }
            observedScopeMap = (ObservedScopeMap) obj2;
            z = true;
            if (observedScopeMap == null) {
                function1.getClass();
                TypeIntrinsics.c(1, function1);
                observedScopeMap = new ObservedScopeMap(function1);
                mutableVector.b(observedScopeMap);
            }
            observedScopeMap2 = this.i;
            j = this.j;
        }
        long j5 = mutableVector;
        if (j != -1) {
            j5 = mutableVector;
            if (j != a) {
                String name = Thread.currentThread().getName();
                StringBuilder sb = new StringBuilder("Detected multithreaded access to SnapshotStateObserver: previousThreadId=");
                sb.append(j);
                sb.append("), currentThread={id=");
                sb.append(a);
                sb.append(", name=");
                sb.append(name);
                sb.append("}. Note that observation on multiple threads in layout/draw is not supported. Make sure your measure/layout/draw for each Owner (AndroidComposeView) is executed on the same thread.");
                PreconditionsKt.a(sb.toString());
                j5 = sb;
            }
        }
        try {
            synchronized (this.g) {
                try {
                    this.i = observedScopeMap;
                    this.j = a;
                } catch (Throwable th) {
                    th = th;
                    j2 = j5;
                }
            }
            a aVar = this.e;
            Object obj3 = observedScopeMap.b;
            MutableObjectIntMap mutableObjectIntMap3 = observedScopeMap.c;
            int i4 = observedScopeMap.d;
            observedScopeMap.b = obj;
            observedScopeMap.c = (MutableObjectIntMap) observedScopeMap.f.e(obj);
            if (observedScopeMap.d == -1) {
                observedScopeMap.d = Long.hashCode(SnapshotKt.i().g());
            }
            SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1 snapshotStateObserver$ObservedScopeMap$derivedStateObserver$1 = observedScopeMap.i;
            MutableVector c = SnapshotStateKt.c();
            try {
                c.b(snapshotStateObserver$ObservedScopeMap$derivedStateObserver$1);
                if (aVar == null) {
                    function0.a();
                    observedScopeMap3 = observedScopeMap;
                } else {
                    Snapshot snapshot = (Snapshot) SnapshotKt.b.a();
                    if (snapshot instanceof TransparentObserverMutableSnapshot) {
                        observedScopeMap3 = observedScopeMap;
                        if (((TransparentObserverMutableSnapshot) snapshot).t == Thread_jvmKt.a()) {
                            Function1 function12 = ((TransparentObserverMutableSnapshot) snapshot).r;
                            Function1 function13 = ((TransparentObserverMutableSnapshot) snapshot).s;
                            try {
                                ((TransparentObserverMutableSnapshot) snapshot).r = SnapshotKt.j(aVar, function12, true);
                                ((TransparentObserverMutableSnapshot) snapshot).s = function13;
                                function0.a();
                                ((TransparentObserverMutableSnapshot) snapshot).r = function12;
                                ((TransparentObserverMutableSnapshot) snapshot).s = function13;
                            } catch (Throwable th2) {
                                ((TransparentObserverMutableSnapshot) snapshot).r = function12;
                                ((TransparentObserverMutableSnapshot) snapshot).s = function13;
                                throw th2;
                            }
                        }
                    } else {
                        observedScopeMap3 = observedScopeMap;
                    }
                    if (snapshot != null && !(snapshot instanceof MutableSnapshot)) {
                        transparentObserverMutableSnapshot = snapshot.u(aVar);
                    } else {
                        if (snapshot instanceof MutableSnapshot) {
                            mutableSnapshot = (MutableSnapshot) snapshot;
                        } else {
                            mutableSnapshot = null;
                        }
                        transparentObserverMutableSnapshot = new TransparentObserverMutableSnapshot(mutableSnapshot, aVar, null, true, false);
                    }
                    try {
                        Snapshot j6 = transparentObserverMutableSnapshot.j();
                        try {
                            function0.a();
                            Snapshot.q(j6);
                            transparentObserverMutableSnapshot.c();
                        } catch (Throwable th3) {
                            try {
                                Snapshot.q(j6);
                                throw th3;
                            } catch (Throwable th4) {
                                th = th4;
                                try {
                                    transparentObserverMutableSnapshot.c();
                                    throw th;
                                } catch (Throwable th5) {
                                    th = th5;
                                    c.k(c.l - 1);
                                    throw th;
                                }
                            }
                        }
                    } catch (Throwable th6) {
                        th = th6;
                    }
                }
                c.k(c.l - 1);
                ObservedScopeMap observedScopeMap4 = observedScopeMap3;
                Object obj4 = observedScopeMap4.b;
                obj4.getClass();
                int i5 = observedScopeMap4.d;
                MutableObjectIntMap mutableObjectIntMap4 = observedScopeMap4.c;
                if (mutableObjectIntMap4 != null) {
                    try {
                        long[] jArr = mutableObjectIntMap4.a;
                        int length = jArr.length - 2;
                        if (length >= 0) {
                            int i6 = 0;
                            while (true) {
                                long j7 = jArr[i6];
                                boolean z3 = z;
                                MutableObjectIntMap mutableObjectIntMap5 = mutableObjectIntMap4;
                                if ((((~j7) << 7) & j7 & (-9187201950435737472L)) != -9187201950435737472L) {
                                    int i7 = 8 - ((~(i6 - length)) >>> 31);
                                    int i8 = 0;
                                    while (i8 < i7) {
                                        if ((j7 & 255) < 128) {
                                            i = i8;
                                            int i9 = (i6 << 3) + i;
                                            j4 = j7;
                                            mutableObjectIntMap2 = mutableObjectIntMap5;
                                            Object obj5 = mutableObjectIntMap2.b[i9];
                                            j3 = j;
                                            try {
                                                if (mutableObjectIntMap2.c[i9] != i5) {
                                                    z2 = z3;
                                                } else {
                                                    z2 = false;
                                                }
                                                if (z2) {
                                                    observedScopeMap4.c(obj4, obj5);
                                                }
                                                if (z2) {
                                                    mutableObjectIntMap2.f(i9);
                                                }
                                            } catch (Throwable th7) {
                                                th = th7;
                                                j2 = j3;
                                                synchronized (this.g) {
                                                }
                                            }
                                        } else {
                                            i = i8;
                                            j4 = j7;
                                            mutableObjectIntMap2 = mutableObjectIntMap5;
                                            j3 = j;
                                        }
                                        i8 = i + 1;
                                        long j8 = j3;
                                        mutableObjectIntMap5 = mutableObjectIntMap2;
                                        j7 = j4 >> 8;
                                        j = j8;
                                    }
                                    mutableObjectIntMap = mutableObjectIntMap5;
                                    j3 = j;
                                    if (i7 != 8) {
                                        break;
                                    }
                                } else {
                                    mutableObjectIntMap = mutableObjectIntMap5;
                                    j3 = j;
                                }
                                if (i6 == length) {
                                    break;
                                }
                                i6++;
                                mutableObjectIntMap4 = mutableObjectIntMap;
                                z = z3;
                                j = j3;
                            }
                            observedScopeMap4.b = obj3;
                            observedScopeMap4.c = mutableObjectIntMap3;
                            observedScopeMap4.d = i4;
                            synchronized (this.g) {
                                this.i = observedScopeMap2;
                                this.j = j3;
                            }
                            return;
                        }
                    } catch (Throwable th8) {
                        th = th8;
                        j3 = j;
                        j2 = j3;
                        synchronized (this.g) {
                            this.i = observedScopeMap2;
                            this.j = j2;
                        }
                        throw th;
                    }
                }
                j3 = j;
                observedScopeMap4.b = obj3;
                observedScopeMap4.c = mutableObjectIntMap3;
                observedScopeMap4.d = i4;
                synchronized (this.g) {
                }
            } catch (Throwable th9) {
                th = th9;
                c.k(c.l - 1);
                throw th;
            }
        } catch (Throwable th10) {
            th = th10;
            j2 = j;
        }
    }
}
