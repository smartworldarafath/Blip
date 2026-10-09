package io.sentry.util;

import io.sentry.Hint;
import io.sentry.hints.ApplyScopeData;
import io.sentry.hints.Backfillable;
import io.sentry.hints.Cached;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class HintUtils {
    public static Hint a(Object obj) {
        Hint hint = new Hint();
        hint.d(obj, "sentry:typeCheckHint");
        return hint;
    }

    public static boolean b(Hint hint, Class cls) {
        return cls.isInstance(hint.b("sentry:typeCheckHint"));
    }

    public static boolean c(Hint hint) {
        return Boolean.TRUE.equals(hint.c(Boolean.class, "sentry:isFromHybridSdk"));
    }

    public static boolean d(Hint hint) {
        if ((!Cached.class.isInstance(hint.b("sentry:typeCheckHint")) && !Backfillable.class.isInstance(hint.b("sentry:typeCheckHint"))) || ApplyScopeData.class.isInstance(hint.b("sentry:typeCheckHint"))) {
            return true;
        }
        return false;
    }
}
