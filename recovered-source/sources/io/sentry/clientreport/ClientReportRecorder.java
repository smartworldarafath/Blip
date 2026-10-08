package io.sentry.clientreport;

import io.sentry.DataCategory;
import io.sentry.DateUtils;
import io.sentry.SentryEnvelope;
import io.sentry.SentryEnvelopeItem;
import io.sentry.SentryItemType;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.protocol.SentryTransaction;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ClientReportRecorder implements IClientReportRecorder {
    public final IClientReportStorage a = new AtomicClientReportStorage();
    public final SentryOptions b;

    public ClientReportRecorder(SentryOptions sentryOptions) {
        this.b = sentryOptions;
    }

    public static DataCategory f(SentryItemType sentryItemType) {
        if (SentryItemType.Event.equals(sentryItemType)) {
            return DataCategory.Error;
        }
        if (SentryItemType.Session.equals(sentryItemType)) {
            return DataCategory.Session;
        }
        if (SentryItemType.Transaction.equals(sentryItemType)) {
            return DataCategory.Transaction;
        }
        if (SentryItemType.UserFeedback.equals(sentryItemType)) {
            return DataCategory.UserReport;
        }
        if (SentryItemType.Feedback.equals(sentryItemType)) {
            return DataCategory.Feedback;
        }
        if (SentryItemType.Profile.equals(sentryItemType)) {
            return DataCategory.Profile;
        }
        if (SentryItemType.ProfileChunk.equals(sentryItemType)) {
            return DataCategory.ProfileChunkUi;
        }
        if (SentryItemType.Attachment.equals(sentryItemType)) {
            return DataCategory.Attachment;
        }
        if (SentryItemType.CheckIn.equals(sentryItemType)) {
            return DataCategory.Monitor;
        }
        if (SentryItemType.ReplayVideo.equals(sentryItemType)) {
            return DataCategory.Replay;
        }
        if (SentryItemType.Log.equals(sentryItemType)) {
            return DataCategory.LogItem;
        }
        if (SentryItemType.Span.equals(sentryItemType)) {
            return DataCategory.Span;
        }
        if (SentryItemType.TraceMetric.equals(sentryItemType)) {
            return DataCategory.TraceMetric;
        }
        return DataCategory.Default;
    }

    @Override // io.sentry.clientreport.IClientReportRecorder
    public final void a(DiscardReason discardReason, DataCategory dataCategory) {
        c(discardReason, dataCategory, 1L);
    }

    @Override // io.sentry.clientreport.IClientReportRecorder
    public final void b(DiscardReason discardReason, SentryEnvelope sentryEnvelope) {
        if (sentryEnvelope != null) {
            try {
                Iterator it = sentryEnvelope.b.iterator();
                while (it.hasNext()) {
                    e(discardReason, (SentryEnvelopeItem) it.next());
                }
            } catch (Throwable th) {
                this.b.getLogger().a(SentryLevel.ERROR, th, "Unable to record lost envelope.", new Object[0]);
            }
        }
    }

    @Override // io.sentry.clientreport.IClientReportRecorder
    public final void c(DiscardReason discardReason, DataCategory dataCategory, long j) {
        try {
            h(discardReason.getReason(), dataCategory.getCategory(), Long.valueOf(j));
            g();
        } catch (Throwable th) {
            this.b.getLogger().a(SentryLevel.ERROR, th, "Unable to record lost event.", new Object[0]);
        }
    }

    @Override // io.sentry.clientreport.IClientReportRecorder
    public final SentryEnvelope d(SentryEnvelope sentryEnvelope) {
        ClientReport clientReport;
        SentryOptions sentryOptions = this.b;
        Date b = DateUtils.b();
        AtomicClientReportStorage atomicClientReportStorage = (AtomicClientReportStorage) this.a;
        atomicClientReportStorage.getClass();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : ((Map) atomicClientReportStorage.a.a()).entrySet()) {
            long andSet = ((AtomicLong) entry.getValue()).getAndSet(0L);
            Long valueOf = Long.valueOf(andSet);
            if (andSet > 0) {
                arrayList.add(new DiscardedEvent(((ClientReportKey) entry.getKey()).a, ((ClientReportKey) entry.getKey()).b, valueOf));
            }
        }
        if (arrayList.isEmpty()) {
            clientReport = null;
        } else {
            clientReport = new ClientReport(b, arrayList);
        }
        if (clientReport == null) {
            return sentryEnvelope;
        }
        try {
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "Attaching client report to envelope.", new Object[0]);
            ArrayList arrayList2 = new ArrayList();
            Iterator it = sentryEnvelope.b.iterator();
            while (it.hasNext()) {
                arrayList2.add((SentryEnvelopeItem) it.next());
            }
            arrayList2.add(SentryEnvelopeItem.b(sentryOptions.getSerializer(), clientReport));
            return new SentryEnvelope(sentryEnvelope.a, arrayList2);
        } catch (Throwable th) {
            sentryOptions.getLogger().a(SentryLevel.ERROR, th, "Unable to attach client report to envelope.", new Object[0]);
            return sentryEnvelope;
        }
    }

    @Override // io.sentry.clientreport.IClientReportRecorder
    public final void e(DiscardReason discardReason, SentryEnvelopeItem sentryEnvelopeItem) {
        SentryOptions sentryOptions = this.b;
        if (sentryEnvelopeItem != null) {
            try {
                SentryItemType sentryItemType = sentryEnvelopeItem.a.n;
                if (SentryItemType.ClientReport.equals(sentryItemType)) {
                    try {
                        i(sentryEnvelopeItem.e(sentryOptions.getSerializer()));
                        return;
                    } catch (Exception unused) {
                        sentryOptions.getLogger().c(SentryLevel.ERROR, "Unable to restore counts from previous client report.", new Object[0]);
                        return;
                    }
                }
                DataCategory f = f(sentryItemType);
                if (f.equals(DataCategory.Transaction)) {
                    SentryTransaction i = sentryEnvelopeItem.i(sentryOptions.getSerializer());
                    if (i != null) {
                        ArrayList arrayList = i.B;
                        h(discardReason.getReason(), DataCategory.Span.getCategory(), Long.valueOf(arrayList.size() + 1));
                        arrayList.size();
                        g();
                    }
                    h(discardReason.getReason(), f.getCategory(), 1L);
                    g();
                    return;
                }
                if (f.equals(DataCategory.LogItem)) {
                    if (sentryEnvelopeItem.g(sentryOptions.getSerializer()) != null) {
                        h(discardReason.getReason(), f.getCategory(), Long.valueOf(r0.j.size()));
                        h(discardReason.getReason(), DataCategory.LogByte.getCategory(), Long.valueOf(sentryEnvelopeItem.f().length));
                        g();
                        return;
                    }
                    sentryOptions.getLogger().c(SentryLevel.ERROR, "Unable to parse lost logs envelope item.", new Object[0]);
                    return;
                }
                if (f.equals(DataCategory.TraceMetric)) {
                    if (sentryEnvelopeItem.h(sentryOptions.getSerializer()) != null) {
                        h(discardReason.getReason(), f.getCategory(), Long.valueOf(r12.j.size()));
                        g();
                        return;
                    }
                    sentryOptions.getLogger().c(SentryLevel.ERROR, "Unable to parse lost metrics envelope item.", new Object[0]);
                    return;
                }
                h(discardReason.getReason(), f.getCategory(), 1L);
                g();
            } catch (Throwable th) {
                sentryOptions.getLogger().a(SentryLevel.ERROR, th, "Unable to record lost envelope item.", new Object[0]);
            }
        }
    }

    public final void g() {
        this.b.getOnDiscard();
    }

    public final void h(String str, String str2, Long l) {
        AtomicLong atomicLong = (AtomicLong) ((Map) ((AtomicClientReportStorage) this.a).a.a()).get(new ClientReportKey(str, str2));
        if (atomicLong != null) {
            atomicLong.addAndGet(l.longValue());
        }
    }

    public final void i(ClientReport clientReport) {
        if (clientReport != null) {
            Iterator it = clientReport.k.iterator();
            while (it.hasNext()) {
                DiscardedEvent discardedEvent = (DiscardedEvent) it.next();
                h(discardedEvent.j, discardedEvent.k, discardedEvent.l);
            }
        }
    }
}
