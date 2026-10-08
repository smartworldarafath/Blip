package com.squareup.wire.internal;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final /* synthetic */ class Internal__InternalKt$sanitize$2 extends FunctionReferenceImpl implements Function1<String, String> {
    public static final Internal__InternalKt$sanitize$2 r = new FunctionReferenceImpl(1, Internal__InternalKt.class, "sanitize", "sanitize(Ljava/lang/String;)Ljava/lang/String;", 1);

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        String str = (String) obj;
        str.getClass();
        return Internal.c(str);
    }
}
