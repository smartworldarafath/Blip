package io.sentry.android.replay;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Regex;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultReplayBreadcrumbConverter$Companion$snakecasePattern$2 extends Lambda implements Function0<Regex> {
    public static final DefaultReplayBreadcrumbConverter$Companion$snakecasePattern$2 k = new Lambda(0);

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        return new Regex("_[a-z]");
    }
}
