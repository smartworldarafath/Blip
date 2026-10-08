package io.sentry.android.core.internal.threaddump;

import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Lines {
    public final ArrayList a;
    public final int b;
    public int c;

    public Lines(ArrayList arrayList) {
        this.a = arrayList;
        this.b = arrayList.size();
    }

    public final Line a() {
        int i = this.c;
        if (i >= 0 && i < this.b) {
            this.c = i + 1;
            return (Line) this.a.get(i);
        }
        return null;
    }
}
