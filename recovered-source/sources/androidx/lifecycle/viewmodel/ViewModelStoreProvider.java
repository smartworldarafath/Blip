package androidx.lifecycle.viewmodel;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.core.os.BundleKt;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.ViewModelStoreProvider;
import defpackage.q;
import java.util.Arrays;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ViewModelStoreProvider {
    public final ViewModelStore a;
    public final String b;
    public final Lazy c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Entry {
        public final Object a;
        public final ViewModelStore b;
        public boolean c;

        public Entry(Object obj) {
            ViewModelStore viewModelStore = new ViewModelStore();
            this.a = obj;
            this.b = viewModelStore;
            this.c = false;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Entry) {
                    Entry entry = (Entry) obj;
                    if (!Intrinsics.a(this.a, entry.a) || !Intrinsics.a(this.b, entry.b) || this.c != entry.c) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            int hashCode;
            Object obj = this.a;
            if (obj == null) {
                hashCode = 0;
            } else {
                hashCode = obj.hashCode();
            }
            return Boolean.hashCode(this.c) + q.b(0, (this.b.hashCode() + (hashCode * 31)) * 31, 31);
        }

        public final String toString() {
            return "Entry(key=" + this.a + ", store=" + this.b + ", refCount=0, isDisposable=" + this.c + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class StateHolder extends ViewModel {
        public final MutableScatterMap b;

        public StateHolder() {
            long[] jArr = ScatterMapKt.a;
            this.b = new MutableScatterMap();
        }

        @Override // androidx.lifecycle.ViewModel
        public final void b() {
            MutableScatterMap mutableScatterMap;
            ViewModelStore viewModelStore;
            MutableScatterMap mutableScatterMap2 = this.b;
            if (mutableScatterMap2.f()) {
                mutableScatterMap = ScatterMapKt.b;
                mutableScatterMap.getClass();
            } else {
                mutableScatterMap = new MutableScatterMap(mutableScatterMap2.e);
                mutableScatterMap.l(mutableScatterMap2);
            }
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
                                Entry entry = (Entry) objArr[(i << 3) + i3];
                                entry.c = true;
                                Entry entry2 = (Entry) mutableScatterMap2.m(entry.a);
                                if (entry2 != null && (viewModelStore = entry2.b) != null) {
                                    viewModelStore.a();
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

    public ViewModelStoreProvider(ViewModelStore viewModelStore) {
        BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        CreationExtras.Empty empty = CreationExtras.Empty.b;
        new SavedStateViewModelFactory();
        empty.getClass();
        this.a = viewModelStore;
        this.b = "androidx.navigation.NavControllerViewModel";
        this.c = LazyKt.b(new Function0() { // from class: androidx.lifecycle.viewmodel.a
            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                ViewModelStoreProvider viewModelStoreProvider = ViewModelStoreProvider.this;
                ViewModelStore viewModelStore2 = viewModelStoreProvider.a;
                if (viewModelStore2 != null) {
                    String str = viewModelStoreProvider.b;
                    LinkedHashMap linkedHashMap = viewModelStore2.a;
                    Object obj = linkedHashMap.get(str);
                    if (obj == null) {
                        obj = new ViewModelStoreProvider.StateHolder();
                        linkedHashMap.put(str, obj);
                    }
                    return (ViewModelStoreProvider.StateHolder) ((ViewModel) obj);
                }
                return new ViewModelStoreProvider.StateHolder();
            }
        });
    }

    public final void a(String str) {
        ViewModelStore viewModelStore;
        StateHolder stateHolder = (StateHolder) this.c.getValue();
        Entry entry = (Entry) stateHolder.b.e(str);
        if (entry != null) {
            entry.c = true;
            Entry entry2 = (Entry) stateHolder.b.m(str);
            if (entry2 != null && (viewModelStore = entry2.b) != null) {
                viewModelStore.a();
            }
        }
    }

    public final ViewModelStore b(Object obj) {
        MutableScatterMap mutableScatterMap = ((StateHolder) this.c.getValue()).b;
        Object e = mutableScatterMap.e(obj);
        if (e == null) {
            e = new Entry(obj);
            mutableScatterMap.o(obj, e);
        }
        return ((Entry) e).b;
    }
}
