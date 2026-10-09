package io.sentry.android.replay;

import io.sentry.util.Random;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ReplayIntegration$random$2 extends Lambda implements Function0<Random> {
    public static final ReplayIntegration$random$2 k = new Lambda(0);

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        return new Random();
    }
}
