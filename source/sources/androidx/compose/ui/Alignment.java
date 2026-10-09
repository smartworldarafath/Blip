package androidx.compose.ui;

import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Alignment {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static final BiasAlignment a = new BiasAlignment(-1.0f, -1.0f);
        public static final BiasAlignment b = new BiasAlignment(0.0f, -1.0f);
        public static final BiasAlignment c = new BiasAlignment(1.0f, -1.0f);
        public static final BiasAlignment d = new BiasAlignment(-1.0f, 0.0f);
        public static final BiasAlignment e = new BiasAlignment(0.0f, 0.0f);
        public static final BiasAlignment f = new BiasAlignment(1.0f, 0.0f);
        public static final BiasAlignment g = new BiasAlignment(-1.0f, 1.0f);
        public static final BiasAlignment h = new BiasAlignment(0.0f, 1.0f);
        public static final BiasAlignment i = new BiasAlignment(1.0f, 1.0f);
        public static final BiasAlignment.Vertical j = new BiasAlignment.Vertical(-1.0f);
        public static final BiasAlignment.Vertical k = new BiasAlignment.Vertical(0.0f);
        public static final BiasAlignment.Vertical l = new BiasAlignment.Vertical(1.0f);
        public static final BiasAlignment.Horizontal m = new BiasAlignment.Horizontal(-1.0f);
        public static final BiasAlignment.Horizontal n = new BiasAlignment.Horizontal(0.0f);
        public static final BiasAlignment.Horizontal o = new BiasAlignment.Horizontal(1.0f);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Horizontal {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Vertical {
    }

    long a(long j, long j2, LayoutDirection layoutDirection);
}
