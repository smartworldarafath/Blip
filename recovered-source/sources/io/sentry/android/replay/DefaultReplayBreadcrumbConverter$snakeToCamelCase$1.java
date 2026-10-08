package io.sentry.android.replay;

import java.util.Locale;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.text.MatchResult;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DefaultReplayBreadcrumbConverter$snakeToCamelCase$1 extends Lambda implements Function1<MatchResult, CharSequence> {
    public static final DefaultReplayBreadcrumbConverter$snakeToCamelCase$1 k = new Lambda(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        MatchResult matchResult = (MatchResult) obj;
        matchResult.getClass();
        String upperCase = String.valueOf(StringsKt.u(matchResult.getValue())).toUpperCase(Locale.ROOT);
        upperCase.getClass();
        return upperCase;
    }
}
