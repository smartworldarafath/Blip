package io.sentry;

import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SentryMaskingOptions {
    public final CopyOnWriteArraySet a = new CopyOnWriteArraySet();
    public final CopyOnWriteArraySet b = new CopyOnWriteArraySet();

    public final void a(String str) {
        this.a.add(str);
        this.b.remove(str);
    }

    public void b(boolean z) {
        CopyOnWriteArraySet copyOnWriteArraySet = this.b;
        CopyOnWriteArraySet copyOnWriteArraySet2 = this.a;
        if (z) {
            copyOnWriteArraySet2.add("android.widget.ImageView");
            copyOnWriteArraySet.remove("android.widget.ImageView");
        } else {
            copyOnWriteArraySet.add("android.widget.ImageView");
            copyOnWriteArraySet2.remove("android.widget.ImageView");
        }
    }

    public void c(boolean z) {
        CopyOnWriteArraySet copyOnWriteArraySet = this.b;
        CopyOnWriteArraySet copyOnWriteArraySet2 = this.a;
        if (z) {
            copyOnWriteArraySet2.add("android.widget.TextView");
            copyOnWriteArraySet.remove("android.widget.TextView");
        } else {
            copyOnWriteArraySet.add("android.widget.TextView");
            copyOnWriteArraySet2.remove("android.widget.TextView");
        }
    }

    public abstract void d();
}
