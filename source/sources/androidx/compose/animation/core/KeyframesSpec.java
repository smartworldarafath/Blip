package androidx.compose.animation.core;

import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import defpackage.q;
import defpackage.u2;
import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class KeyframesSpec<T> implements DurationBasedAnimationSpec<T> {
    public final KeyframesSpecConfig a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class KeyframeEntity<T> extends KeyframeBaseEntity<T> {
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof KeyframeEntity) {
                KeyframeEntity keyframeEntity = (KeyframeEntity) obj;
                if (keyframeEntity.a.equals(this.a) && Intrinsics.a(keyframeEntity.b, this.b)) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public final int hashCode() {
            return this.b.hashCode() + q.b(0, this.a.hashCode() * 31, 31);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class KeyframesSpecConfig<T> extends KeyframesSpecBaseConfig<T, KeyframeEntity<T>> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.animation.core.KeyframesSpec$KeyframeEntity, java.lang.Object, androidx.compose.animation.core.KeyframeBaseEntity] */
        public final KeyframeEntity a(Float f, int i) {
            ?? keyframeBaseEntity = new KeyframeBaseEntity(f, EasingKt.c);
            this.b.i(i, keyframeBaseEntity);
            return keyframeBaseEntity;
        }
    }

    public KeyframesSpec(KeyframesSpecConfig keyframesSpecConfig) {
        this.a = keyframesSpecConfig;
    }

    @Override // androidx.compose.animation.core.DurationBasedAnimationSpec, androidx.compose.animation.core.AnimationSpec
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final VectorizedKeyframesSpec a(TwoWayConverter twoWayConverter) {
        int[] iArr;
        Object[] objArr;
        int[] iArr2;
        Object[] objArr2;
        int i;
        KeyframesSpecConfig keyframesSpecConfig = this.a;
        MutableIntObjectMap mutableIntObjectMap = keyframesSpecConfig.b;
        MutableIntList mutableIntList = new MutableIntList(mutableIntObjectMap.e + 2);
        MutableIntObjectMap mutableIntObjectMap2 = new MutableIntObjectMap(mutableIntObjectMap.e);
        int[] iArr3 = mutableIntObjectMap.b;
        Object[] objArr3 = mutableIntObjectMap.c;
        long[] jArr = mutableIntObjectMap.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i2 = 0;
            while (true) {
                long j = jArr[i2];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i3 = 8;
                    int i4 = 8 - ((~(i2 - length)) >>> 31);
                    int i5 = 0;
                    while (i5 < i4) {
                        if ((255 & j) < 128) {
                            int i6 = (i2 << 3) + i5;
                            int i7 = iArr3[i6];
                            KeyframeEntity keyframeEntity = (KeyframeEntity) objArr3[i6];
                            mutableIntList.b(i7);
                            i = i3;
                            iArr2 = iArr3;
                            objArr2 = objArr3;
                            mutableIntObjectMap2.i(i7, new VectorizedKeyframeSpecElementInfo((AnimationVector) ((TwoWayConverterImpl) twoWayConverter).a.b(keyframeEntity.a), keyframeEntity.b));
                        } else {
                            iArr2 = iArr3;
                            objArr2 = objArr3;
                            i = i3;
                        }
                        j >>= i;
                        i5++;
                        i3 = i;
                        iArr3 = iArr2;
                        objArr3 = objArr2;
                    }
                    iArr = iArr3;
                    objArr = objArr3;
                    if (i4 != i3) {
                        break;
                    }
                } else {
                    iArr = iArr3;
                    objArr = objArr3;
                }
                if (i2 == length) {
                    break;
                }
                i2++;
                iArr3 = iArr;
                objArr3 = objArr;
            }
        }
        if (!mutableIntObjectMap.a(0)) {
            int i8 = mutableIntList.b;
            if (i8 >= 0) {
                mutableIntList.c(i8 + 1);
                int[] iArr4 = mutableIntList.a;
                int i9 = mutableIntList.b;
                if (i9 != 0) {
                    ArraysKt.f(1, 0, i9, iArr4, iArr4);
                }
                iArr4[0] = 0;
                mutableIntList.b++;
            } else {
                u2.o("Index must be between 0 and size");
                return null;
            }
        }
        if (!mutableIntObjectMap.a(keyframesSpecConfig.a)) {
            mutableIntList.b(keyframesSpecConfig.a);
        }
        int i10 = mutableIntList.b;
        if (i10 != 0) {
            int[] iArr5 = mutableIntList.a;
            iArr5.getClass();
            Arrays.sort(iArr5, 0, i10);
        }
        return new VectorizedKeyframesSpec(mutableIntList, mutableIntObjectMap2, keyframesSpecConfig.a, EasingKt.c);
    }
}
