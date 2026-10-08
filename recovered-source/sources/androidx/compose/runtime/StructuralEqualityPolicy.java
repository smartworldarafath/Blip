package androidx.compose.runtime;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StructuralEqualityPolicy implements SnapshotMutationPolicy<Object> {
    public static final StructuralEqualityPolicy a = new Object();

    @Override // androidx.compose.runtime.SnapshotMutationPolicy
    public final boolean a(Object obj, Object obj2) {
        return Intrinsics.a(obj, obj2);
    }

    public final String toString() {
        return "StructuralEqualityPolicy";
    }
}
