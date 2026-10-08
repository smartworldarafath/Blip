package androidx.compose.ui.platform;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.retain.ManagedRetainedValuesStore;
import androidx.lifecycle.ViewModel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LifecycleRetainedValuesStoreOwner extends ViewModel {
    public final MutableIntObjectMap b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface FrameEndScheduler {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RetainedValuesStoreEntry {
        public final LifecycleRetainedValuesStore a;
        public final LifecycleRetainedValuesStore b;
        public boolean c;
        public CancellationHandle d;

        public RetainedValuesStoreEntry() {
            LifecycleRetainedValuesStore lifecycleRetainedValuesStore = new LifecycleRetainedValuesStore();
            this.a = lifecycleRetainedValuesStore;
            this.b = lifecycleRetainedValuesStore;
        }
    }

    public LifecycleRetainedValuesStoreOwner() {
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.a;
        this.b = new MutableIntObjectMap();
    }

    @Override // androidx.lifecycle.ViewModel
    public final void b() {
        MutableIntObjectMap mutableIntObjectMap = this.b;
        int[] iArr = mutableIntObjectMap.b;
        Object[] objArr = mutableIntObjectMap.c;
        long[] jArr = mutableIntObjectMap.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            int i4 = (i << 3) + i3;
                            int i5 = iArr[i4];
                            MutableObjectList mutableObjectList = (MutableObjectList) objArr[i4];
                            Object[] objArr2 = mutableObjectList.a;
                            int i6 = mutableObjectList.b;
                            for (int i7 = 0; i7 < i6; i7++) {
                                RetainedValuesStoreEntry retainedValuesStoreEntry = (RetainedValuesStoreEntry) objArr2[i7];
                                CancellationHandle cancellationHandle = retainedValuesStoreEntry.d;
                                if (cancellationHandle != null) {
                                    cancellationHandle.cancel();
                                }
                                retainedValuesStoreEntry.d = null;
                                ManagedRetainedValuesStore managedRetainedValuesStore = retainedValuesStoreEntry.a.a;
                                managedRetainedValuesStore.b = true;
                                managedRetainedValuesStore.a = false;
                                managedRetainedValuesStore.a();
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        return;
                    }
                }
                if (i != length) {
                    i++;
                } else {
                    return;
                }
            }
        }
    }
}
