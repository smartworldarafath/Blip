package androidx.compose.runtime;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import java.util.List;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RecomposeScopeImpl implements RecomposeScope {
    public RecomposeScopeOwner a;
    public int b;
    public GapAnchor c;
    public Function2 d;
    public int e;
    public MutableObjectIntMap f;
    public MutableScatterMap g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static void a(SlotWriter slotWriter, List list, RecomposeScopeOwner recomposeScopeOwner) {
            Object obj;
            RecomposeScopeImpl recomposeScopeImpl;
            if (!list.isEmpty()) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    int c = slotWriter.c((GapAnchor) list.get(i));
                    int N = slotWriter.N(slotWriter.b, slotWriter.r(c));
                    if (N < slotWriter.g(slotWriter.b, slotWriter.r(c + 1))) {
                        obj = slotWriter.c[slotWriter.h(N)];
                    } else {
                        obj = Composer.Companion.a;
                    }
                    if (obj instanceof RecomposeScopeImpl) {
                        recomposeScopeImpl = (RecomposeScopeImpl) obj;
                    } else {
                        recomposeScopeImpl = null;
                    }
                    if (recomposeScopeImpl != null) {
                        recomposeScopeImpl.a = recomposeScopeOwner;
                    }
                }
            }
        }
    }

    public RecomposeScopeImpl(RecomposeScopeOwner recomposeScopeOwner) {
        this.a = recomposeScopeOwner;
    }

    public static boolean a(DerivedState derivedState, MutableScatterMap mutableScatterMap) {
        derivedState.getClass();
        SnapshotMutationPolicy snapshotMutationPolicy = ((DerivedSnapshotState) derivedState).l;
        if (snapshotMutationPolicy == null) {
            snapshotMutationPolicy = StructuralEqualityPolicy.a;
        }
        return !snapshotMutationPolicy.a(r0.g().f, mutableScatterMap.e(derivedState));
    }

    public final boolean b() {
        boolean z;
        if (this.a != null) {
            GapAnchor gapAnchor = this.c;
            if (gapAnchor != null) {
                z = gapAnchor.a();
            } else {
                z = false;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    public final InvalidationResult c(Object obj) {
        InvalidationResult c;
        RecomposeScopeOwner recomposeScopeOwner = this.a;
        if (recomposeScopeOwner != null && (c = recomposeScopeOwner.c(this, obj)) != null) {
            return c;
        }
        return InvalidationResult.j;
    }

    public final void d() {
        RecomposeScopeOwner recomposeScopeOwner = this.a;
        if (recomposeScopeOwner != null) {
            recomposeScopeOwner.b();
        }
        this.a = null;
        this.f = null;
        this.g = null;
        this.d = null;
    }

    public final void e(boolean z) {
        int i;
        int i2 = this.b;
        if (z) {
            i = i2 | 32;
        } else {
            i = i2 & (-33);
        }
        this.b = i;
    }
}
