package io.sentry;

import java.util.Collections;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SamplingContext {
    public final TransactionContext a;
    public final Double b;

    public SamplingContext(TransactionContext transactionContext, Double d) {
        this.a = transactionContext;
        this.b = d;
        Map map = Collections.EMPTY_MAP;
    }
}
