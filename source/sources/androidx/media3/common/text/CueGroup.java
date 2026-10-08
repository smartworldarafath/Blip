package androidx.media3.common.text;

import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import defpackage.u2;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CueGroup {
    public static final Ordering b = Ordering.c().d(new u2(20));
    public static final CueGroup c = new CueGroup(ImmutableList.r());
    public final ImmutableList a;

    static {
        Util.z(0);
        Util.z(1);
    }

    public CueGroup(List list) {
        this.a = ImmutableList.x(b, list);
    }
}
