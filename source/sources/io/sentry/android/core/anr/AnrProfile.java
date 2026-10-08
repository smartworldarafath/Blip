package io.sentry.android.core.anr;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class AnrProfile {
    public final ArrayList a;
    public final long b;
    public final long c;

    public AnrProfile(List list) {
        this.a = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AnrStackTrace anrStackTrace = (AnrStackTrace) it.next();
            if (anrStackTrace != null) {
                this.a.add(anrStackTrace);
            }
        }
        Collections.sort(this.a);
        if (!this.a.isEmpty()) {
            this.b = ((AnrStackTrace) this.a.get(0)).k;
            this.c = ((AnrStackTrace) this.a.get(r5.size() - 1)).k + 10000;
        } else {
            this.b = 0L;
            this.c = 0L;
        }
    }
}
