package androidx.activity;

import androidx.navigationevent.NavigationEvent;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BackEventCompat {
    public final float a;
    public final float b;
    public final float c;
    public final int d;
    public final long e;

    public BackEventCompat(NavigationEvent navigationEvent) {
        navigationEvent.getClass();
        float f = navigationEvent.c;
        float f2 = navigationEvent.d;
        float f3 = navigationEvent.b;
        int i = navigationEvent.a;
        long j = navigationEvent.e;
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = i;
        this.e = j;
    }

    public final String toString() {
        return "BackEventCompat(touchX=" + this.a + ", touchY=" + this.b + ", progress=" + this.c + ", swipeEdge=" + this.d + ", frameTimeMillis=" + this.e + ')';
    }
}
