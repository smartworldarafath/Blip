package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.time.Clock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class CreationContextFactory {
    public final Context a;
    public final Clock b;
    public final Clock c;

    public CreationContextFactory(Context context, Clock clock, Clock clock2) {
        this.a = context;
        this.b = clock;
        this.c = clock2;
    }
}
