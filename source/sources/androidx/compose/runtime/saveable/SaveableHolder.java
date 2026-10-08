package androidx.compose.runtime.saveable;

import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import defpackage.fe;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SaveableHolder<T> implements SaverScope, RememberObserver {
    public Saver j;
    public SaveableStateRegistry k;
    public String l;
    public Object m;
    public Object[] n;
    public SaveableStateRegistry.Entry o;
    public final c p = new c(this);

    public SaveableHolder(Saver saver, SaveableStateRegistry saveableStateRegistry, String str, Object obj, Object[] objArr) {
        this.j = saver;
        this.k = saveableStateRegistry;
        this.l = str;
        this.m = obj;
        this.n = objArr;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void a() {
        SaveableStateRegistry.Entry entry = this.o;
        if (entry != null) {
            ((SaveableStateRegistryImpl$registerProvider$3) entry).a();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void b() {
        SaveableStateRegistry.Entry entry = this.o;
        if (entry != null) {
            ((SaveableStateRegistryImpl$registerProvider$3) entry).a();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void c() {
        d();
    }

    public final void d() {
        String a;
        SaveableStateRegistry saveableStateRegistry = this.k;
        SaveableStateRegistry.Entry entry = this.o;
        if (entry == null) {
            if (saveableStateRegistry != null) {
                c cVar = this.p;
                Object a2 = cVar.a();
                if (a2 != null && !saveableStateRegistry.b(a2)) {
                    if (a2 instanceof SnapshotMutableState) {
                        SnapshotMutableState snapshotMutableState = (SnapshotMutableState) a2;
                        if (snapshotMutableState.a() != SnapshotStateKt.h() && snapshotMutableState.a() != SnapshotStateKt.m() && snapshotMutableState.a() != SnapshotStateKt.j()) {
                            a = "If you use a custom SnapshotMutationPolicy for your MutableState you have to write a custom Saver";
                        } else {
                            a = "MutableState containing " + snapshotMutableState.getValue() + " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it as a stateSaver parameter to rememberSaveable().";
                        }
                    } else {
                        a = RememberSaveableKt.a(a2);
                    }
                    throw new IllegalArgumentException(a);
                }
                this.o = saveableStateRegistry.e(this.l, cVar);
                return;
            }
            return;
        }
        fe.u("entry(", entry, ") is not null");
    }
}
