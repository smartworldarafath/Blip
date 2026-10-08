package io.sentry.cache;

import io.sentry.Breadcrumb;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.cache.tape.ObjectQueue;
import io.sentry.cache.tape.QueueFile;
import io.sentry.util.LazyEvaluator;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements LazyEvaluator.Evaluator {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ a(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // io.sentry.util.LazyEvaluator.Evaluator
    public final Object c() {
        QueueFile a;
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 0:
                return ((CacheStrategy) obj).j.getSerializer();
            default:
                final PersistingScopeObserver persistingScopeObserver = (PersistingScopeObserver) obj;
                SentryOptions sentryOptions = persistingScopeObserver.a;
                File b = CacheUtils.b(sentryOptions, ".scope-cache");
                if (b == null) {
                    sentryOptions.getLogger().c(SentryLevel.INFO, "Cache dir is not set, cannot store in scope cache", new Object[0]);
                    return ObjectQueue.P();
                }
                File file = new File(b, "breadcrumbs.json");
                try {
                    try {
                        QueueFile.Builder builder = new QueueFile.Builder(file);
                        builder.b = sentryOptions.getMaxBreadcrumbs();
                        a = builder.a();
                    } catch (IOException e) {
                        sentryOptions.getLogger().b(SentryLevel.ERROR, "Failed to create breadcrumbs queue", e);
                        return ObjectQueue.P();
                    }
                } catch (IOException unused) {
                    file.delete();
                    QueueFile.Builder builder2 = new QueueFile.Builder(file);
                    builder2.b = sentryOptions.getMaxBreadcrumbs();
                    a = builder2.a();
                }
                return ObjectQueue.O(a, new ObjectQueue.Converter<Breadcrumb>() { // from class: io.sentry.cache.PersistingScopeObserver.1
                    @Override // io.sentry.cache.tape.ObjectQueue.Converter
                    public final void a(Object obj2, OutputStream outputStream) {
                        Breadcrumb breadcrumb = (Breadcrumb) obj2;
                        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, PersistingScopeObserver.c));
                        try {
                            PersistingScopeObserver.this.a.getSerializer().a(breadcrumb, bufferedWriter);
                            bufferedWriter.close();
                        } catch (Throwable th) {
                            try {
                                bufferedWriter.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }

                    @Override // io.sentry.cache.tape.ObjectQueue.Converter
                    public final Object b(byte[] bArr) {
                        SentryOptions sentryOptions2 = PersistingScopeObserver.this.a;
                        try {
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr), PersistingScopeObserver.c));
                            try {
                                Breadcrumb breadcrumb = (Breadcrumb) sentryOptions2.getSerializer().d(bufferedReader, Breadcrumb.class);
                                bufferedReader.close();
                                return breadcrumb;
                            } finally {
                            }
                        } catch (Throwable th) {
                            sentryOptions2.getLogger().a(SentryLevel.ERROR, th, "Error reading entity from scope cache", new Object[0]);
                            return null;
                        }
                    }
                });
        }
    }
}
