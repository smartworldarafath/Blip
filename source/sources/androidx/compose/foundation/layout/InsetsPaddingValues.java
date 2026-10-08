package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InsetsPaddingValues implements PaddingValues {
    public final WindowInsets a;
    public final Density b;

    public InsetsPaddingValues(WindowInsets windowInsets, Density density) {
        this.a = windowInsets;
        this.b = density;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public final float a() {
        WindowInsets windowInsets = this.a;
        Density density = this.b;
        return density.U(windowInsets.c(density));
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public final float b(LayoutDirection layoutDirection) {
        WindowInsets windowInsets = this.a;
        Density density = this.b;
        return density.U(windowInsets.d(density, layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public final float c(LayoutDirection layoutDirection) {
        WindowInsets windowInsets = this.a;
        Density density = this.b;
        return density.U(windowInsets.b(density, layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public final float d() {
        WindowInsets windowInsets = this.a;
        Density density = this.b;
        return density.U(windowInsets.a(density));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InsetsPaddingValues)) {
            return false;
        }
        InsetsPaddingValues insetsPaddingValues = (InsetsPaddingValues) obj;
        if (Intrinsics.a(this.a, insetsPaddingValues.a) && Intrinsics.a(this.b, insetsPaddingValues.b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "InsetsPaddingValues(insets=" + this.a + ", density=" + this.b + ")";
    }
}
