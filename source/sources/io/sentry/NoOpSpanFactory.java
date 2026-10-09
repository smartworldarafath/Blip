package io.sentry;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpSpanFactory implements ISpanFactory {
    public static final NoOpSpanFactory a = new Object();

    @Override // io.sentry.ISpanFactory
    public final ITransaction a(TransactionContext transactionContext, Scopes scopes, TransactionOptions transactionOptions, CompositePerformanceCollector compositePerformanceCollector) {
        return NoOpTransaction.a;
    }
}
