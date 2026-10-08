package androidx.compose.foundation.layout;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.graphics.Insets;
import androidx.core.view.WindowInsetsCompat;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidWindowInsets implements WindowInsets {
    public final int a;
    public final String b;
    public final MutableState c = SnapshotStateKt.g(Insets.e);
    public final MutableState d = SnapshotStateKt.g(Boolean.TRUE);

    public AndroidWindowInsets(int i, String str) {
        this.a = i;
        this.b = str;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int a(Density density) {
        return e().b;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int b(Density density, LayoutDirection layoutDirection) {
        return e().c;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int c(Density density) {
        return e().d;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int d(Density density, LayoutDirection layoutDirection) {
        return e().a;
    }

    public final Insets e() {
        return (Insets) ((SnapshotMutableStateImpl) this.c).getValue();
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AndroidWindowInsets) {
                if (this.a == ((AndroidWindowInsets) obj).a) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final void f(boolean z) {
        ((SnapshotMutableStateImpl) this.d).setValue(Boolean.valueOf(z));
    }

    public final void g(WindowInsetsCompat windowInsetsCompat, int i) {
        int i2 = this.a;
        if (i != 0 && (i & i2) == 0) {
            return;
        }
        ((SnapshotMutableStateImpl) this.c).setValue(windowInsetsCompat.e(i2));
        f(windowInsetsCompat.q(i2));
    }

    public final int hashCode() {
        return this.a;
    }

    public final String toString() {
        return this.b + "(" + e().a + ", " + e().b + ", " + e().c + ", " + e().d + ")";
    }
}
