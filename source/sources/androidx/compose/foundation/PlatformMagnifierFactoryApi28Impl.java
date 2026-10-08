package androidx.compose.foundation;

import android.view.View;
import android.widget.Magnifier;
import androidx.compose.ui.unit.Density;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PlatformMagnifierFactoryApi28Impl implements PlatformMagnifierFactory {
    public static final PlatformMagnifierFactoryApi28Impl a = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class PlatformMagnifierImpl implements PlatformMagnifier {
        public final Magnifier a;

        public PlatformMagnifierImpl(Magnifier magnifier) {
            this.a = magnifier;
        }

        @Override // androidx.compose.foundation.PlatformMagnifier
        public void a(long j, long j2) {
            this.a.show(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)));
        }

        public final long b() {
            Magnifier magnifier = this.a;
            return (magnifier.getWidth() << 32) | (magnifier.getHeight() & 4294967295L);
        }
    }

    @Override // androidx.compose.foundation.PlatformMagnifierFactory
    public final boolean a() {
        return false;
    }

    @Override // androidx.compose.foundation.PlatformMagnifierFactory
    public final PlatformMagnifier b(View view, Density density) {
        return new PlatformMagnifierImpl(new Magnifier(view));
    }
}
