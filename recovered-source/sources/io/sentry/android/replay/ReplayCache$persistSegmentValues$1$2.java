package io.sentry.android.replay;

import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ReplayCache$persistSegmentValues$1$2 extends Lambda implements Function1<Map.Entry<String, String>, CharSequence> {
    public static final ReplayCache$persistSegmentValues$1$2 k = new Lambda(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        entry.getClass();
        return ((String) entry.getKey()) + '=' + ((String) entry.getValue());
    }
}
