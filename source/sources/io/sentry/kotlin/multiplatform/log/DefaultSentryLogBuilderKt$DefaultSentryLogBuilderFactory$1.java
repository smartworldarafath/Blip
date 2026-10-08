package io.sentry.kotlin.multiplatform.log;

import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.text.Regex;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public /* synthetic */ class DefaultSentryLogBuilderKt$DefaultSentryLogBuilderFactory$1 extends FunctionReferenceImpl implements Function0<DefaultSentryLogBuilder> {
    public static final DefaultSentryLogBuilderKt$DefaultSentryLogBuilderFactory$1 r = new FunctionReferenceImpl(0, DefaultSentryLogBuilder.class, "<init>", "<init>()V", 0);

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, io.sentry.kotlin.multiplatform.log.DefaultSentryLogBuilder] */
    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        ?? obj = new Object();
        new Regex("%%|%s");
        obj.a = new Object[0];
        new LinkedHashMap();
        return obj;
    }
}
