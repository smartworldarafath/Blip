package net.blip.shared;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AvatarEditorScope {
    public final boolean a;
    public final Function0 b;

    public AvatarEditorScope(boolean z, Function0 function0) {
        function0.getClass();
        this.a = z;
        this.b = function0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AvatarEditorScope)) {
            return false;
        }
        AvatarEditorScope avatarEditorScope = (AvatarEditorScope) obj;
        if (this.a == avatarEditorScope.a && Intrinsics.a(this.b, avatarEditorScope.b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (Boolean.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "AvatarEditorScope(saving=" + this.a + ", onPickRequest=" + this.b + ")";
    }
}
